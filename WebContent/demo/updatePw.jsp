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

String password = request.getParameter("newPassword");


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

    sql = "update member set memberPass=password(?) where memberEmail=?";

    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, password);
    pstmt.setString(2, id);
    pstmt.executeUpdate();
    
  



 } catch (SQLException e) {
    System.out.print(e.getMessage());
 } finally {
    if (rs != null)
       rs.close();
    pstmt.close();
    conn.close();
 }


%>
</body>
</html>