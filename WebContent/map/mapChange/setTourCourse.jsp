<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.Date" %>
<jsp:useBean id="setCourse" class="DAO.MapDAO"></jsp:useBean>
<<jsp:useBean id="setMember" class="DAO.MemberDAO"></jsp:useBean>
<%
	request.setCharacterEncoding("UTF-8");
	String uri = request.getContextPath();
	String[] tourPath = request.getParameterValues("tourPath");
	String memberId = session.getAttribute("memberIdKey").toString();
	//int memberId = Integer.parseInt("1");
	String courseGroup = session.getAttribute("groupKey").toString();
	//int courseGroup = Integer.parseInt("0");
	int result = setCourse.insertTourPath(Integer.parseInt(memberId), tourPath, Integer.parseInt(courseGroup));
	courseGroup += 1;
	session.setAttribute("groupKey", courseGroup);
	setMember.groupUp(Integer.parseInt(courseGroup), Integer.parseInt(memberId));
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