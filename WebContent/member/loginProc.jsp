<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="Bean.MemberBean" %>
<jsp:useBean id="mMgr" class="DAO.MemberDAO"></jsp:useBean>
<%
	String email = request.getParameter("email");
	String pass = request.getParameter("password");
	ArrayList<MemberBean> list = mMgr.getName(email);
	String name = null;
	int id = 0;
	int group = 0;
	int cartGroup=0;
	for(int i=0;i<list.size();i++){
		MemberBean bean = list.get(i);
		name = bean.getMemberName();
		id = bean.getMemberId();
		group = bean.getMemberGroup();
		cartGroup = bean.getMemberCart();
		
	}
	boolean flag = mMgr.loginMember(email, pass);
	String uri = request.getContextPath();
	String userInfo[] = new String[2];
	String msg = "로그인에 실패 하였습니다.";
	
	if(flag){
		msg = "로그인에 성공 하였습니다.";
		session.setAttribute("idKey", email);
		session.setAttribute("nameKey",name);
		session.setAttribute("memberIdKey", id);
		session.setAttribute("groupKey", group);
		session.setAttribute("memberCart", cartGroup);
%>
		<script>
		alert("<%=msg%>");
		location.href="<%=uri%>/demo/main.jsp"
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
