<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String uri = request.getContextPath();
%>
<jsp:useBean id="mMgr" class="DAO.MemberDAO"></jsp:useBean>
<jsp:useBean id="bean" class="Bean.MemberBean"></jsp:useBean>
<jsp:setProperty name="bean" property="*"></jsp:setProperty>
<%
	boolean result  = mMgr.insertMember(bean);
	if(result){
%>
<script type="text/javascript">
	alert("회원가입을 하였습니다.");
	location.href="<%=uri%>/main/LoginMain.jsp";
</script>
<%
	}else{
%>
<script type="text/javascript">
	alert("회원가입에 실패하였습니다.");
	history.back();
</script>
<%
		
	}
%>