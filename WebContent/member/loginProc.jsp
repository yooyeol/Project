<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mMgr" class="DAO.MemberDAO"></jsp:useBean>
<%
	String email = request.getParameter("email");
	String pass = request.getParameter("password");
	boolean flag = mMgr.loginMember(email, pass);
	String uri = request.getContextPath();
	String userInfo[] = new String[2];
	String msg = "로그인에 실패 하였습니다.";
	
	if(flag){
		msg = "로그인에 성공 하였습니다.";
		session.setAttribute("idKey", email);
%>
		<script>
		alert("<%=msg%>");
		location.href="<%=uri%>/main/main.jsp"
		</script>
<%
	}else{
%>
	<script>
		alert("<%=msg%>");
		history.back();
	</script>
<%		
	}
%>
