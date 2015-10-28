<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="mMgr" class="DAO.MemberDAO"></jsp:useBean>
<%
	request.setCharacterEncoding("UTF-8");
	String Email = request.getParameter("memberEmail");
	boolean result = mMgr.checkMail(Email);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ID중복체크</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script>
	function closeWindow(){
		opener.document.regFrm.mailCheck.disabled = true;
		self.close();
	}
</script>
</head>
<body>
	<div align="center" class="container">
		<div class="row">
			<b><%=Email%></b><br/>
		<%
			if (result) {
				out.println("은(는) 이미 존재 합니다.<br/>");
			} else {
				out.println("은(는) 사용 가능 합니다.<br/>");
			}
		%>
		<button class="btn btn-primary" onclick="closeWindow()">닫기</button>
		</div>
	</div>
</body>
</html>