package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import Bean.MemberBean;
import Bean.ZipCodeBean;
import DBConn.DBConnectionMgr;

public class MemberDAO {
	private DBConnectionMgr pool;
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String sql = null;
	
	public MemberDAO(){
		try{
			pool = DBConnectionMgr.getInstance();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//이름 가져오기
	public ArrayList<MemberBean> getName(String email){
		ArrayList<MemberBean> list = new ArrayList<MemberBean>();
		String name = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT MemberID, MemberName, MemberEmail FROM member where MemberEmail=?";
		try{
			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			while(rs.next()){
				MemberBean bean = new MemberBean();
				bean.setMemberId(rs.getInt(1));
				bean.setMemberName(rs.getString(2));
				bean.setMemberEmail(rs.getString(3));
				list.add(bean);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			pool.freeConnection(con, pstmt, rs);
		}
		
		return list;
	}
	
	//중복검사
	public boolean checkMail(String Email){
		boolean flag = false;
		try{
			con = pool.getConnection();
			sql = "select MemberEmail from member where MemberEmail = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, Email);
			flag = pstmt.executeQuery().next();
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			pool.freeConnection(con, pstmt);
		}
		
		return flag;
	}
	
	
	//주소검색
	public Vector<ZipCodeBean> zipCodeRead(String dong){
		Vector<ZipCodeBean> vlist = new Vector<ZipCodeBean>();
		
		try{
			con = pool.getConnection();
			sql = "select ZIPCODE, SIDO, GUNGU, DONG, RI, BLDG, BUNJI from zipcode where DONG like ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%"+dong+"%");
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				ZipCodeBean bean = new ZipCodeBean();
				bean.setZipCode(rs.getString(1));
				bean.setSido(rs.getString(2));
				bean.setGungu(rs.getString(3));
				bean.setDong(rs.getString(4));
				bean.setRi(rs.getString(5));
				bean.setBldg(rs.getString(6));
				bean.setBunji(rs.getString(7));
				vlist.add(bean);
			}
			
		}catch(SQLException e){
			e.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			pool.freeConnection(con, pstmt, rs);
		}
		
		return vlist;
	}
	
	//회원 가입
	public boolean insertMember(MemberBean bean){
		boolean flag = false;
		
		try{
			con = pool.getConnection();
			sql = "insert into member(MemberEmail, MemberPass, MemberName, MemberTel, MemberAddr, MemberZipCode) values(?,PASSWORD(?),?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getMemberEmail());
			pstmt.setString(2, bean.getMemberPass());
			pstmt.setString(3, bean.getMemberName());
			pstmt.setString(4, bean.getMemberTel());
			pstmt.setString(5, bean.getMemberAddr());
			pstmt.setString(6, bean.getMemberZipCode());
			if(pstmt.executeUpdate() == 1){
				flag = true;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	
	//로그인
	public boolean loginMember(String email, String pass){
		boolean flag = false;
		
		try{
			con = pool.getConnection();
			sql = "select MemberEmail, MemberPass from member where MemberEmail=? and MemberPass=PASSWORD(?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, email);
			pstmt.setString(2, pass);
			rs = pstmt.executeQuery();
			flag = rs.next();			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			pool.freeConnection(con,pstmt,rs);
		}
		
		return flag;
	}
	
}