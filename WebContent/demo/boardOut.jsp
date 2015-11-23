<%@ page contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="bMgr" class="board.BoardMgr"/>



<% 

int member =Integer.parseInt(request.getParameter("memberID"));
int boardOut = Integer.parseInt(request.getParameter("boardOut"));
int result=bMgr.deleteBoard(member, boardOut);



%>

<%if(result==1){ %>
<script type="text/javascript">
   alert("삭제 되었습니다.");
   location.href = "board.jsp";
</script>
<%}else{ %>
<script type="text/javascript">
   alert("삭제할 수 없습니다.");
   location.href = "boardDetail.jsp";
</script>
<%} %>
</body>
</html>