<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="board" class="board.BoardMgr"></jsp:useBean>
    <%@page import="board.BoardBean"%>
<%@page import="java.util.Vector"%>
    <%@page import="org.json.simple.*" %>
    <%@page import="org.json.simple.parser.*" %>
<%
int memberID=Integer.parseInt(session.getAttribute("memberIdKey").toString()); 
	//int MemberID=Integer.parseInt(request.getParameter("MemberID"));
	int MemberGroup=Integer.parseInt(request.getParameter("MemberGroup"));
	int listSize=0;
	int MaxGroup=0;
	// board.getTourCourse(MemberID); 
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
int tourCourseID ;
String tourCourseDate;
int tourSiteContentID;
int sequence;

int result;

			
					courseList=board.getTourCourse(memberID, MemberGroup);	
				  listSize = courseList.size();//브라우저 화면에 보여질 게시물갯수
				  if (courseList.isEmpty()) {
					out.println("등록된 게시물이 없습니다.");
				  } else {
			%>
				
					<%
						  for (int i = 0;i<listSize; i++) {
							
							BoardBean bean = courseList.get(i);
							int num = bean.getMessageID();
							
							tourCourseID = bean.getTourCourseID();
							 tourCourseDate=bean.getTourCourseDate();
							 tourSiteContentID=bean.getTourSiteContentID();
							sequence=bean.getTourCourseSequence();
							 MemberGroup=bean.getTourCourseGroup();
					%>
					
					<h4>코스ID : <%=tourCourseID %> | courseDate: <%=tourCourseDate %> | tourSiteContentID : <%=tourSiteContentID %> |memberGroup: <%=MemberGroup %>
					</h4>
					
<%}%>

	<form action="boardPostProc.jsp">

	<input type="hidden" name="memberGroup" value=<%=MemberGroup %>>	
	<button type="submit">경로등록하기</button>	
		
	</form>				
		<%		  } %>
		
		
		

</body>
</html>
