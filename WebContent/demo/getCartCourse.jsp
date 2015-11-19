<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="board" class="board.BoardMgr"></jsp:useBean>
    <%@page import="board.BoardBean"%>
<%@page import="java.util.Vector"%>
    <%@page import="org.json.simple.*" %>
    <%@page import="org.json.simple.parser.*" %>
<%
	
int memberID=Integer.parseInt(session.getAttribute("memberIdKey").toString()); 
	int listSize=0;
	board.getCartCourse(memberID);
	Vector<BoardBean> cartList = null;
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
int tourCourseID ;

int tourSiteContentID;
int sequence;
int MemberGroup=5;
int result;

				cartList = board.getCartCourse(memberID);
				  listSize = cartList.size();//브라우저 화면에 보여질 게시물갯수
				  if (cartList.isEmpty()) {
					out.println("등록된 게시물이 없습니다.");
				  } else {
			%>
				
				
					<%
						  for (int i = 0;i<listSize; i++) {
							
							BoardBean bean = cartList.get(i);
							int num = bean.getMessageID();
							
							tourCourseID = bean.getTourCourseID();
							 
							 tourSiteContentID=bean.getTourSiteContentID();
							sequence=bean.getTourCourseSequence();
							
					%>
					
					<h4>코스ID : <%=tourCourseID %> | tourSiteContentID : <%=tourSiteContentID %> 
					</h4>
<%}%>
	<form action="">
	<input type="checkbox" name="memberGroup" value="<%=MemberGroup %>"/>	
	<%=result=MemberGroup%>			
	</form>				
		<%		  } %>

</body>
</html>
