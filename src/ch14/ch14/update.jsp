<%@ page contentType="text/html; charset=EUC-KR"%>
<html>
<head> 
<%@ page import="ch14.BoardBean"%>
<% 
	  int num = Integer.parseInt(request.getParameter("num"));
	  String nowPage = request.getParameter("nowPage");
	  BoardBean bean = (BoardBean)session.getAttribute("bean");
	  String subject = bean.getSubject();
	  String name = bean.getName(); 
	  String content = bean.getContent(); 
%>
<title>JSPBoard</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script>
	function check() {
	   if (document.updateFrm.pass.value == "") {
		 alert("������ ���� �н����带 �Է��ϼ���.");
		 document.updateFrm.pass.focus();
		 return false;
		 }
	   document.updateFrm.submit();
	}
</script>
</head>
<body bgcolor="#FFFFCC">
<div align="center">
<br/><br/>
<table width="460" cellspacing="0" cellpadding="3">
  <tr>
   <td bgcolor="#FF9018"  height="21" align="center">�����ϱ�</td>
  </tr>
</table>
<form name="updateFrm" method="post" action="updateProc.jsp" >
<table width="70%" cellspacing="0" cellpadding="7">
 <tr>
  <td align="center">
   <table border="0">
    <tr>
     <td width="20%">�� ��</td>
     <td width="80%">
	  <input type="text" name="name" value="<%=name%>" size="30" maxlength="20">
	 </td>
	</tr>
	<tr>
     <td width="20%">�� ��</td>
     <td width="80%">
	  <input type="text" name="subject" size="50" value="<%=subject%>" maxlength="50">
	 </td>
    <tr>
     <td width="20%">�� ��</td>
     <td width="80%">
	  <textarea name="content" rows="10" cols="50"><%=content%></textarea>
	 </td>
    </tr>
	<tr>
     <td width="20%">��� ��ȣ</td> 
     <td width="80%"><input type="password" name="pass" size="15" maxlength="15">
      �����ÿ��� ��й�ȣ�� �ʿ��մϴ�.</td>
    </tr>
	<tr>
     <td colspan="2" height="5"><hr/></td>
    </tr>
	<tr>
     <td colspan="2">
	  <input type="button" value="�����Ϸ�" onClick="check()">
      <input type="reset" value="�ٽü���"> 
      <input type="button" value="�ڷ�" onClick="history.go(-1)">
	 </td>
    </tr> 
   </table>
  </td>
 </tr>
</table>
 <input type="hidden" name="nowPage" value="<%=nowPage %>">
 <input type='hidden' name="num" value="<%=num%>">
</form> 
</div>
</body>
</html>