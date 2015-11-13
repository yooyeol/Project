<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
	<%@page import="java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<% 
request.setCharacterEncoding("utf-8");

String id = session.getAttribute("idKey").toString();
String member = session.getAttribute("memberIdKey").toString();

/* String addr1 = request.getParameter("memberZipCode");
String addr2 = request.getParameter("memberAddr"); */


String sql = "";

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try {
    Class.forName("com.mysql.jdbc.Driver").newInstance();
 } catch (ClassNotFoundException e) {
    out.println("class not found");
 } catch (Exception etc) {
    out.println("etc exception");
    out.println(etc.getMessage());
 }
 try {
	  
    String url = "jdbc:mysql://kitri.iptime.org:3306/eztour?useUnicode=true&characterEncoding=UTF-8";
    String userId = "root";
    String userPass = "root";

    conn = DriverManager.getConnection(url, userId, userPass);

    sql = "select TourSiteContentID from eztour.tourcourse where MemberID=?";

    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, member);
    rs = pstmt.executeQuery();
    String submember = "";

    
    
    while (rs.next()) {
		
		submember = rs.getString(1);
%>

	<%=submember%>
	<% 
	sql = "select TourSiteTitle from eztour.toursite where TourSiteContentID=submember";

    pstmt = conn.prepareStatement(sql);
    rs = pstmt.executeQuery();
    String subtitle = "";
    while (rs.next()) {
    	subtitle = rs.getString(1);
    	%>
    	
 
    
	<%=subtitle%>


<%
		}}
	%>
	
	<% 
 } catch (SQLException e) {
			e.printStackTrace();
			//out.println("SQLException : " + e.getMessage());
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	%> 		



</body>
</html>