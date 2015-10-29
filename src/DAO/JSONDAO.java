package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

//�� Ŀ�� �ȵǳ�
public class JSONDAO {
	Connection conn = null;
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	String id = "root";
	String pw = "root";
	String url = "jdbc:mysql://192.168.25.44:3306/eztour";
		
	@SuppressWarnings("unchecked")
	public JSONObject getJSONObject(String sql) {
		JSONObject result = null;
		try {
			result = new JSONObject();
			JSONArray datas = new JSONArray();
			result.put("datas", datas);
			conn = DriverManager.getConnection(url, id, pw);
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			ResultSetMetaData metaData = rs.getMetaData();
			int size = metaData.getColumnCount();
			Math.random();
			while(rs.next()){
				JSONArray item = new JSONArray();
				for (int i = 1; i <= size; i++) {
					item.add(rs.getString(i));
				}
				datas.add(item);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			close();
		}
		return result;
	}
	
	public JSONDAO() {}
	private void close(){
		if(rs != null) try{ rs.close();} catch(Exception e){ e.printStackTrace(); }
		if(pstmt != null) try{ pstmt.close();} catch(Exception e){ e.printStackTrace(); }
		if(conn != null) try{ conn.close();} catch(Exception e){ e.printStackTrace(); }
	}
}
