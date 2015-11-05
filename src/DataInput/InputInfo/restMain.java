package DataInput.InputInfo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class restMain {
	public static void main(String[] args) throws Exception {

		String JDBC_DRIVER = "com.mysql.jdbc.Driver";
		String DB_URL = "jdbc:mysql://localhost:3306/eztour";

		String user = "root";
		String pass = "root";
		String sql = "SELECT TourSiteContentID from TOURSITE WHERE TourSiteContentID NOT IN (SELECT DISTINCT TourSiteContentID FROM info);";

		Connection con = null;
		PreparedStatement pstmt = null;
		String sql1 = "INSERT INTO INFO(TourSiteContentID, InfoBookTour, InfoHomePage, InfoTel, InfoFirstImage2, InfoOverview) VALUES(?,?,?,?,?,?)";
		PreparedStatement pstmt1 = null;

		try {
			Class.forName(JDBC_DRIVER);
			con = DriverManager.getConnection(DB_URL, user, pass);
			System.out.println("드라이버 연결 성공");
			pstmt = con.prepareStatement(sql);
			pstmt1 = con.prepareStatement(sql1);

			ResultSet rs = pstmt.executeQuery();
			int i = 0;
			while (rs.next()) {
				System.out.println(rs.getInt(1));
				try {
					restTest t = new restTest();
					String json = t.restClient(String.valueOf(rs.getInt(1)));

					System.out.println(json);

					JSONParser jsonParser = new JSONParser();
					JSONObject jsonObject = (JSONObject) jsonParser.parse(json);

					System.out.println("==============================================");
					i++;
					JSONObject info = (JSONObject) jsonObject.get("response");
					JSONObject info_body = (JSONObject) info.get("body");
					if (info_body.get("items").equals(""))
						continue;
					JSONObject info_body_items = (JSONObject) info_body.get("items");
					JSONObject item = (JSONObject) info_body_items.get("item");

					System.out.println();
					System.out.println("==============================================");
					// JSONObject item = (JSONObject)
					// info_body_items_item.get(j);
					System.out.println(i + " >>> " + item);
					System.out.println("==============================================");

					pstmt1.setInt(1, Integer.parseInt(String.valueOf(item.get("contentid"))));

					// System.out.println("InfoBookTour : " + (String)
					// item.get("booktour")); // booktour
					if (item.get("booktour") != null) {
						pstmt1.setInt(2, Integer.parseInt(String.valueOf(item.get("booktour"))));
					} else {
						pstmt1.setInt(2, -1);
					}
					// 출력
					System.out.println("InfoHomePage : " + (String) item.get("homepage")); // homepage
					if ((String) item.get("homepage") != null) {
						pstmt1.setString(3, (String) item.get("homepage"));
					} else {
						pstmt1.setString(3, "");
					}

					System.out.println("InfoTel : " + String.valueOf(item.get("tel"))); // tel
					if (String.valueOf(item.get("tel")) != null) {
						pstmt1.setString(4, String.valueOf(item.get("tel")));
					} else {
						pstmt1.setString(4, "");
					}

					System.out.println("InfoFirstImage2 : " + (String) item.get("firstimage2")); // firstimage2
					if ((String) item.get("firstimage2") != null) {
						pstmt1.setString(5, (String) item.get("firstimage2"));
					} else {
						pstmt1.setString(5, "");
					}

					System.out.println("InfoOverview : " + (String) item.get("overview")); // overview
					if ((String) item.get("overview") != null) {
						pstmt1.setString(6, (String) item.get("overview"));
					} else {
						pstmt1.setString(6, "");
					}

					pstmt1.execute();

					if (i % 200 == 0)
						try {
							if(i%1000==0){
								System.out.println("완료");
								break;
							}
							Thread.sleep(50000);
						} catch (InterruptedException e) {
						}

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