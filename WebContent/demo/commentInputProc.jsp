<%@ page contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="bMgr" class="board.BoardMgr"/>
<%
	  bMgr.insertComment(request);
	  response.sendRedirect("board.jsp");
	
%>
