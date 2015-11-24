package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Date;
import java.util.Vector;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import Bean.MapBean;
import DBConn.DBConnectionMgr;

public class MapDAO {
	
	private DBConnectionMgr pool;
	
	public MapDAO(){
		try{
			pool = DBConnectionMgr.getInstance();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public int insertTourPath(int memberId, String[] tourPath, int courseGroup){
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "INSERT INTO TOURCOURSE(MemberID, TourCourseDate, TourCourseSequence, TourSiteContentID, TourCourseGroup, TourCourseAddr) VALUES(?,curdate(),?,?,?,(SELECT TourSiteAddr FROM YogiJogi.TOURSITE WHERE TourSiteContentID=?))";
		int result = 0;
		try{
			con = pool.getConnection();
			System.out.println("tourPath.length : "+tourPath.length);
			for(int i=0;i<tourPath.length;i++){
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, memberId);
				pstmt.setInt(2, i);
				pstmt.setInt(3, Integer.parseInt(tourPath[i]));
				pstmt.setInt(4, courseGroup);
				pstmt.setInt(5, Integer.parseInt(tourPath[i]));
				result += pstmt.executeUpdate();
			}
			System.out.println("result : "+result);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			pool.freeConnection(con, pstmt);
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	public JSONObject getJSONObject(String sql, String tourSiteContentID){
		JSONObject result = null;
		JSONArray dataArray = null;
		JSONObject data = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			System.out.println(sql);
			//result.put("datas", datas);
			
			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, tourSiteContentID);
			rs = pstmt.executeQuery();

			result = new JSONObject();
			dataArray = new JSONArray();
			
			while(rs.next()){
				data = new JSONObject();
				data.put("TourSiteContentID", rs.getString(1));
				System.out.println("TourSiteContentID : " + rs.getString(1));
				data.put("TourSiteTitle", rs.getString(2));
				System.out.println("TourSiteTitle : " + rs.getString(2));
				data.put("TourSiteMapX", rs.getString(3));
				System.out.println("TourSiteMapX : " + rs.getString(3));
				data.put("TourSiteMapY", rs.getString(4));
				System.out.println("TourSiteMapY : " + rs.getString(4));
				data.put("TourSiteAddr", rs.getString(5));
				System.out.println("TourSiteMapY : " + rs.getString(5));
				dataArray.add(data);
			}
			result.put("datas", dataArray);
			System.out.println(result);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			pool.freeConnection(con, pstmt, rs);
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	public JSONObject getJSONObject(String sql, String areaCode, String contentType){
		JSONObject result = null;
		JSONArray dataArray = null;
		JSONObject data = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			System.out.println(sql);
			//result.put("datas", datas);
			
			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, areaCode);
			pstmt.setInt(2, Integer.parseInt(contentType));
			rs = pstmt.executeQuery();
			ResultSetMetaData metaData = rs.getMetaData();
			int size = metaData.getColumnCount();

			result = new JSONObject();
			dataArray = new JSONArray();
			
			while(rs.next()){
				data = new JSONObject();
				data.put("TourSiteContentID", rs.getString(1));
				//System.out.println("TourSiteContentID : " + rs.getString(1));
				data.put("TourSiteTitle", rs.getString(2));
				//System.out.println("TourSiteTitle : " + rs.getString(2));
				data.put("TourSiteAddr", rs.getString(3));
				//System.out.println("TourSiteAddr : " + rs.getString(3));
				data.put("TourSiteMapX", rs.getString(4));
				//System.out.println("TourSiteMapX : " + rs.getString(4));
				data.put("TourSiteMapY", rs.getString(5));
				//System.out.println("TourSiteMapY : " + rs.getString(5));
				data.put("TourSiteFirstImage", rs.getString(6));
				//System.out.println("TourSiteFirstImage : " + rs.getString(6));
				data.put("ContentTypeID", rs.getString(7));
				dataArray.add(data);
			}
			result.put("datas", dataArray);
			System.out.println(size);
			System.out.println(result);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			pool.freeConnection(con, pstmt, rs);
		}
		return result;
	}
/*	public static void main(String args[]){
		MapDAO m = new MapDAO();
		m.getJSONObject("SELECT TourSiteContentID, TourSiteTitle, TourSiteAddr, TourSiteMapX, TourSiteMapY, TourSiteFirstImage FROM toursite WHERE TourSiteAreaCode=? AND ContentTypeID=? LIMIT 0,100", "32", "12");
	}*/
	
	@SuppressWarnings("unchecked")
	public JSONObject mapList(String sendSql, int areaCode){
		JSONObject result = null;
		JSONArray dataArray = null;
		JSONObject data = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		try{
			con = pool.getConnection();
			sql = sendSql;
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, areaCode);
			rs = pstmt.executeQuery();
			
			result = new JSONObject();
			dataArray = new JSONArray();
			
			while(rs.next()){
				data = new JSONObject();
				data.put("TourSiteTitle", rs.getString(1));
				data.put("TourSiteMapX", rs.getString(2));
				data.put("TourSiteMapY", rs.getString(3));
				dataArray.add(data);
			}
			result.put("datas", dataArray);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			pool.freeConnection(con, pstmt, rs);
		}
		return result;
	}

	public Vector<MapBean> getmapList(String area){
		Vector<MapBean> mapList = new Vector<MapBean>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		try{
			con = pool.getConnection();
			sql = "select TourSiteTitle, TourSiteMapX, TourSiteMapY from toursite where TourSiteAddr like '?%' limit 0,500";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, area);
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
}