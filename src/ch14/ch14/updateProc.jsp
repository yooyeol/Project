<%@ page contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="bMgr" class="ch14.BoardMgr" />
<jsp:useBean id="bean" class="ch14.BoardBean" scope="session"/>
<jsp:useBean id="upBean" class="ch14.BoardBean"/>
<jsp:setProperty property="*" name="upBean"/>
<%
	  String nowPage = request.getParameter("nowPage");
	  //bean�� �ִ� pass�� upBean pass�� ��(read.jsp)
	  String upPass = upBean.getPass();
	  String inPass = bean.getPass();
	  if(upPass.equals(inPass)){
	    bMgr.updateBoard(upBean);
		String url = "read.jsp?nowPage="+nowPage+"&num="+upBean.getNum();
		response.sendRedirect(url);
	  }else{
%>
	<script type="text/javascript">
		alert("�Է��Ͻ� ��й�ȣ�� �ƴմϴ�.");
		history.back();
	</script>
<%}%>