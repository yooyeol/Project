<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mMgr" class="DAO.MemberDAO"></jsp:useBean>
<%
	String email = request.getParameter("email");
	String pass = request.getParameter("password");
	String name = mMgr.getName(email);
	boolean flag = mMgr.loginMember(email, pass);
	String uri = request.getContextPath();
	String userInfo[] = new String[2];
	String msg = "로그인에 실패 하였습니다.";
	
	if(flag){
		msg = "로그인에 성공 하였습니다.";
		session.setAttribute("idKey", email);
		session.setAttribute("nameKey",name);
%>
		<script>
		alert("<%=msg%>");
		location.href="<%=uri%>/demo/main1.jsp"
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
