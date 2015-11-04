package DataInput.InputImage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.eclipse.jdt.internal.compiler.ast.InstanceOfExpression;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class restMain {
	public static void main(String[] args) throws Exception {

		String JDBC_DRIVER = "com.mysql.jdbc.Driver";
		String DB_URL = "jdbc:mysql://localhost:3306/eztour";

		String user = "root";
		String pass = "root";
		String sql = "SELECT TourSiteContentID,ContentTypeID from TOURSITE WHERE TourSiteContentID NOT IN (SELECT DISTINCT TourSiteContentID FROM image);";

		Connection con = null;
		PreparedStatement pstmt = null;
		String sql1 = "INSERT INTO IMAGE(TourSiteContentID, ImageSerialNum, ImageOriginImgUrl) VALUES(?,?,?)";
		PreparedStatement pstmt1 = null;

		try {
			Class.forName(JDBC_DRIVER);
			con = DriverManager.getConnection(DB_URL, user, pass);
			System.out.println("드라이버 연결 성공");
			pstmt = con.prepareStatement(sql);
			pstmt1 = con.prepareStatement(sql1);

			ResultSet rs = pstmt.executeQuery();
			int i = 0;
			int k = 0;
			while (rs.next()) {
				i++;
				if(rs.getInt(1)<2033826)
					continue;
				if (i % 190 == 0)
					try {
						Thread.sleep(60000);
					} catch (InterruptedException e) {
					}
				try {
					restTest t = new restTest();
					String json = t.restClient(String.valueOf(rs.getInt(1)), String.valueOf(rs.getInt(2)));
					k++;
					System.out.println(i + " " + rs.getInt(1) + " " + rs.getInt(2));
					System.out.println(json);
					JSONParser jsonParser = new JSONParser();
					JSONObject jsonObject = (JSONObject) jsonParser.parse(json);

					System.out.println("==============================================");

					JSONObject info = (JSONObject) jsonObject.get("response");
					JSONObject info_body = (JSONObject) info.get("body");

					if (info_body.get("items").equals("") || (JSONObject) info_body.get("items") == null) {
						continue;
					}

					JSONObject info_body_items = (JSONObject) info_body.get("items");

					if (info_body_items.get("item") instanceof JSONObject) {

						JSONObject item = (JSONObject) info_body_items.get("item");

						System.out.println();
						System.out.println("==============================================");
						System.out.println(i + " >>> " + item);
						k++;
						System.out.println("==============================================");

						pstmt1.setInt(1, Integer.parseInt(String.valueOf(item.get("contentid"))));

						System.out.println("ImageSerialNum : " + (String) item.get("serialnum")); // serialnum
						if (String.valueOf(item.get("serialnum")) != null) {
							pstmt1.setString(2, (String) item.get("serialnum"));
						} else {
							pstmt1.setString(2, "");
						}

						System.out.println("ImageOriginImageUrl : " + (String) item.get("originimgurl")); // ImageSmallImageUrl
						if (String.valueOf(item.get("originimgurl")) != null) {
							pstmt1.setString(3, (String) item.get("originimgurl"));
						} else {
							pstmt1.setString(3, "");
						}
						pstmt1.execute();
						continue;
					} else {
						JSONArray info_body_items_item = (JSONArray) info_body_items.get("item");

						for (int j = 0; j < info_body_items_item.size(); j++) {
							System.out.println();

							System.out.println("==============================================");
							System.out.println(rs.getInt(1) + " " + rs.getInt(2));
							JSONObject item = (JSONObject) info_body_items_item.get(j);
							System.out.println(i + " >>> " + item);
							k++;
							System.out.println("==============================================");

							pstmt1.setInt(1, Integer.parseInt(String.valueOf(item.get("contentid"))));

							System.out.println("ImageSerialNum : " + (String) item.get("serialnum")); // serialnum
							if (String.valueOf(item.get("serialnum")) != null) {
								pstmt1.setString(2, (String) item.get("serialnum"));
							} else {
								pstmt1.setString(2, "");
							}

							System.out.println("ImageOriginImageUrl : " + (String) item.get("originimgurl")); // ImageSmallImageUrl
							if (String.valueOf(item.get("originimgurl")) != null) {
								pstmt1.setString(3, (String) item.get("originimgurl"));
							} else {
								pstmt1.setString(3, "");
							}
							pstmt1.execute();
						}
					}
					System.out.println(k);
				} catch (ParseException e) {
					System.out.println();
					System.out.println("ParseException==================");
					e.printStackTrace();
				}
			}

		} catch (SQLException e) {
			System.out.println();
			System.out.println("SQLException==================");
			System.out.println();
			e.printStackTrace();
		} catch (Exception ex) {
			System.out.println();
			System.out.println("Exception==================");
			System.out.println();
			ex.printStackTrace();
		} finally {
			try { // 연결 해제(한정돼 있으므로)

				if (pstmt != null) {
					pstmt.close();
				}
				if (con != null) {
					con.close();
				}
			} catch (SQLException se2) {
				se2.printStackTrace();
			}
		}
	}
}