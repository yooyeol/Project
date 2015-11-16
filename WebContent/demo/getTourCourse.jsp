<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="board" class="board.BoardMgr"></jsp:useBean>
    <%@page import="board.BoardBean"%>
<%@page import="java.util.Vector"%>
    <%@page import="org.json.simple.*" %>
    <%@page import="org.json.simple.parser.*" %>
<%
	
	int MemberID=Integer.parseInt(request.getParameter("MemberID"));
	int listSize=0;
	board.getTourCourse(MemberID);
	Vector<BoardBean> courseList = null;
%>
<!DOCTYPE html>
<html>
<head>
<title>요기조기 게시판</title>
</head>
<style>
table,th,td{
border : 1px solid black;
border-collapse: collapse;
}
th,td{
padding:5px;
}
</style>
<body>
<%
				courseList = board.getTourCourse(MemberID);
				  listSize = courseList.size();//브라우저 화면에 보여질 게시물갯수
				  if (courseList.isEmpty()) {
					out.println("등록된 게시물이 없습니다.");
				  } else {
			%>
				
				
					<%
						  for (int i = 0;i<listSize; i++) {
							
							BoardBean bean = courseList.get(i);
							int num = bean.getMessageID();
							
							int tourCourseID = bean.getTourCourseID();
							String tourCourseDate=bean.getTourCourseDate();
							int tourSiteContentID=bean.getTourSiteContentID();
							int sequence=bean.getTourCourseSequence();
					%>
					
					<h4>코스ID : <%=tourCourseID %> | courseDate: <%=tourCourseDate %> | tourSiteContentID : <%=tourSiteContentID %> </h4>

<%}} %>

</body>
</html>
