<%@ page contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="bMgr" class="board.BoardMgr"/>
<%

if(request.getParameter("MemberGroup")==null){
	bMgr.insertBoardText(request);	
}else{
	  bMgr.insertBoard(request);
}//bMgr.insertIMG(request);
	  response.sendRedirect("board.jsp");
	
%>
