package DataInput.InputTourSite;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

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
		String sql = "INSERT INTO TOURSITE(ContentTypeID, TourSiteTitle, TourSiteAddr, TourSiteMapX, TourSiteMapY, TourSiteFirstImage, TourSiteAreaCode, TourSiteSigunguCode, TourSiteContentID) VALUES(?,?,?,?,?,?,?,?,?)";

		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName(JDBC_DRIVER);
			con = DriverManager.getConnection(DB_URL, user, pass);
			System.out.println("드라이버 연결 성공");
			pstmt = con.prepareStatement(sql);

			restTest t = new restTest();
			String json = t.restClient();

			// System.out.println(json);

			try {

				JSONParser jsonParser = new JSONParser();
				JSONObject jsonObject = (JSONObject) jsonParser.parse(json);

				System.out.println("==============================================");

				JSONObject info = (JSONObject) jsonObject.get("response");
				// JSONObject info_header = (JSONObject) info.get("header");
				JSONObject info_body = (JSONObject) info.get("body");
				JSONObject info_body_items = (JSONObject) info_body.get("items");
				JSONArray info_body_items_item = (JSONArray) info_body_items.get("item");

				for (int j = 0; j < info_body_items_item.size(); j++) {
					System.out.println();
					System.out.println("==============================================");
					JSONObject item = (JSONObject) info_body_items_item.get(j);
					System.out.println(j + " >>> " + item);
					System.out.println("==============================================");

					pstmt.setInt(1, Integer.parseInt(String.valueOf(item.get("contenttypeid"))));
					System.out
							.println("ContentTypeID : " + Integer.parseInt(String.valueOf(item.get("contenttypeid")))); // contenttypeid
																														// 출력

					pstmt.setString(2, String.valueOf(item.get("title")));
					System.out.println("TourSiteTitle : " + String.valueOf(item.get("title"))); // TourSiteTitle
																							// 출력

					System.out.println("addr1 : " + (String) item.get("addr1")); // addr1
																					// 출력
					if (item.get("addr1") != null) {
						if (String.valueOf(item.get("addr2")) != null) {
							pstmt.setString(3, (String) item.get("addr1") + " " + String.valueOf(item.get("addr2")));
						} else {
							pstmt.setString(3, (String) item.get("addr1"));
						}
					} else {
						pstmt.setString(3, "");
					}

					System.out.println("TourSiteMapX : " + item.get("mapx"));
					if (item.get("mapx") != null) {
						pstmt.setDouble(4, Double.parseDouble(String.valueOf(item.get("mapx"))));
					} else {
						pstmt.setDouble(4, 0.0);
					}

					System.out.println("TourSiteMapY : " + item.get("mapy"));
					if (item.get("mapy") != null) {
						pstmt.setDouble(5, Double.parseDouble(String.valueOf(item.get("mapy"))));
					} else {
						pstmt.setDouble(5, 0.0);
					}

					System.out.println("TourSiteFirstImage : " + (String) item.get("firstimage"));
					if (item.get("firstimage") != null) {
						pstmt.setString(6, (String) item.get("firstimage"));
					} else {
						pstmt.setString(6, "");
					}

					System.out.println("AreaCode : " + item.get("areacode"));
					if (item.get("areacode") != null) {
						pstmt.setInt(7, Integer.parseInt(String.valueOf(item.get("areacode"))));
					} else {
						pstmt.setInt(7, 0);
					}

					System.out.println("SigunguCode : " + item.get("sigungucode"));
					if (item.get("sigungucode") != null) {
						pstmt.setInt(8, Integer.parseInt(String.valueOf(item.get("sigungucode"))));
					} else {
						pstmt.setInt(8, 0);
					}

					System.out.println("ContentID : " + item.get("contentid"));
					if (item.get("contentid") != null) {
						pstmt.setInt(9, Integer.parseInt(String.valueOf(item.get("contentid"))));
					} else {
						pstmt.setInt(9, 0);
					}

					pstmt.execute();

				}
			} catch (ParseException e) {
				System.out.println();
				System.out.println("ParseException==================");
				e.printStackTrace();
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