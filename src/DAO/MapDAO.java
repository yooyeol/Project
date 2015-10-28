package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import Bean.MapBean;
import DBConn.DBConnectionMgr;

public class MapDAO {
	
	private DBConnectionMgr pool;
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String sql = null;
	
	public MapDAO(){
		try{
			pool = DBConnectionMgr.getInstance();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public Vector<MapBean> mapList(){
		Vector<MapBean> mapList = new Vector<MapBean>();
		try{
			con = pool.getConnection();
			sql = "select TourSiteTitle, TourSiteMapX, TourSiteMapY from toursite limit 0,1000";
			pstmt = con.prepareStatement(sql);
//			pstmt.setInt(1, 0);
//			pstmt.setInt(2, 10);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				MapBean bean = new MapBean();
				bean.setTourSiteTitle(rs.getString(1));
				bean.setTourSiteMapX(rs.getDouble(2));
				bean.setTourSiteMapY(rs.getDouble(3));
				mapList.add(bean);
				//System.out.println(rs.getString(1));
			}			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			pool.freeConnection(con, pstmt, rs);
		}
		return mapList;
	}
/*	public static void main(String[] args) {
		MapDAO m = new MapDAO();
		
		for(int i=0;i<m.mapList().size();i++){
			System.out.println(m.mapList().get(i).getTourSiteTitle());
			System.out.println(m.mapList().get(i).getTourSiteMapX());
			System.out.println(m.mapList().get(i).getTourSiteMapY());
			System.out.println("=========================");
		}
	}*/
}
