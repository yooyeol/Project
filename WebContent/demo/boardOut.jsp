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
   alert("���� �Ǿ����ϴ�.");
   location.href = "board.jsp";
</script>
<%}else{ %>
<script type="text/javascript">
   alert("������ �� �����ϴ�.");
   location.href = "boardDetail.jsp";
</script>
<%} %>
</body>
</html>