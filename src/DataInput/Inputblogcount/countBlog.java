package DataInput.Inputblogcount;

import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;

public class countBlog {
	public static void main(String[] args) {
		String JDBC_DRIVER = "com.mysql.jdbc.Driver";
		String DB_URL = "jdbc:mysql://192.168.25.44:3306/eztour";

		String user = "root";
		String pass = "root";
		String sql = "SELECT TourSiteContentID, TourSiteTitle from toursite WHERE TourSiteBlogCount is NULL limit 0, 30000;";

		Connection con = null;
		PreparedStatement pstmt = null;
		String sql1 = "update toursite set TourSiteBlogCount=? where TourSiteContentID=?;";
		PreparedStatement pstmt1 = null;

		try {
			Class.forName(JDBC_DRIVER);
			con = DriverManager.getConnection(DB_URL, user, pass);
			System.out.println("드라이버 연결 성공");
			pstmt = con.prepareStatement(sql);
			pstmt1 = con.prepareStatement(sql1);

			ResultSet rs = pstmt.executeQuery();
			int i=0;
			while (rs.next()) {
				if(rs.getInt(1)==858884)
					continue;
				System.out.println(rs.getInt(1)+" : "+rs.getString(2));
				String query1 = URLEncoder.encode(rs.getString(2), "UTF-8");
				String apiUrl = "http://openapi.naver.com/search?key=";
				String ServiceKey = "495fefb7974361dfda250be82ff8662b&query=" + query1;
				String papiUrl = "";

				String para = "&display=1&start=1";
				String para2 = "&target=blog&sort=sim";

				DocumentBuilderFactory f = DocumentBuilderFactory.newInstance();
				DocumentBuilder parser = f.newDocumentBuilder();
				Document xmlDoc = null;
				String paseUrl = null;

				papiUrl = apiUrl + ServiceKey + para + para2;

				f = DocumentBuilderFactory.newInstance();
				parser = f.newDocumentBuilder();
				paseUrl = papiUrl;

				try {
					xmlDoc = parser.parse(paseUrl);
				} catch (SAXException | IOException e) {
					e.printStackTrace();
				}
				Element root = xmlDoc.getDocumentElement();

				Node code = root.getElementsByTagName("total").item(0);
				
				i++;
				System.out.println(i+" -> " + rs.getInt(1) + " : "+ code.getTextContent());
				 
				pstmt1.setInt(1, Integer.parseInt(code.getTextContent()));
				pstmt1.setInt(2, rs.getInt(1));

				pstmt1.execute();
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
