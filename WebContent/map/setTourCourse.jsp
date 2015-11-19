<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.Date" %>
<jsp:useBean id="setCourse" class="DAO.MapDAO"></jsp:useBean>
<<jsp:useBean id="setMember" class="DAO.MemberDAO"></jsp:useBean>
<%
	request.setCharacterEncoding("UTF-8");
	String uri = request.getContextPath();
	String[] tourPath = request.getParameterValues("tourPath");
	int memberId = Integer.parseInt(session.getAttribute("memberIdKey").toString());
	int courseGroup =  Integer.parseInt(session.getAttribute("groupKey").toString());;
	int result = setCourse.insertTourPath(memberId, tourPath, courseGroup);
	courseGroup += 1;
	session.setAttribute("groupKey", courseGroup);
	setMember.groupUp(courseGroup, memberId);
%>
<%
	if(result != 0){
%>
	<script>
		alert("경로가 저장 되었습니다.");
	</script>
<%
	}else{
%>
	<script>
		alert("경로저장에 실패 했습니다.");
		history.back();
	</script>
<%
	}
%>