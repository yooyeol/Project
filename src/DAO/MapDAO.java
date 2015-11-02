package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
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
	
	@SuppressWarnings("unchecked")
	public JSONObject getJSONObject(String sql, String areaCode, String contentType){
		JSONObject result = null;
		JSONArray datas = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			System.out.println(sql);
			result = new JSONObject();
			datas = new JSONArray();
			result.put("datas", datas);
			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, areaCode);
			pstmt.setInt(2, Integer.parseInt(contentType));
			rs = pstmt.executeQuery();
			ResultSetMetaData metaData = rs.getMetaData();
			int size = metaData.getColumnCount();
			while(rs.next()){
				JSONArray data = new JSONArray();
				JSONArray item = new JSONArray();
				for(int i=1;i<=size;i++){
					data.add(rs.getString(i));
				}
				datas.add(data);
			}
			System.out.println(result);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			pool.freeConnection(con, pstmt, rs);
		}
		return result;
	}
	
	public Vector<MapBean> mapList(String sendSql, int areaCode){
		Vector<MapBean> mapList = new Vector<MapBean>();
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
