<%@ page contentType="application;charset=euc-kr"%>
<jsp:useBean id="bMgr" class="ch14.BoardMgr" />
<%
	  bMgr.downLoad(request, response,out,pageContext);
%>