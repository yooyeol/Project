<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String uri = request.getContextPath();
%>
<!DOCTYPE html>
<html>	
<head>
<title>User Login Flat Responsive widget Template :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<meta name="keywords" content="User Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
<link href="<%=uri %>/cssLogin/style.css" rel='stylesheet' type='text/css' />
<!--web-fonts-->
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>

<!--/web-fonts-->
</head>
<body>
<!--User-Login-->
<h1>User Login</h1>
<div class="avtar">
	<img src="<%=uri%>/images/avtar.png" />
</div>



	<div class="login-form">
		<p>처음 오셨습니까?<a href="<%=uri%>/member/register.jsp">여기</a>를 클릭하세요.</p>
			<form method="post" action="<%=uri%>/member/loginProc.jsp">
				<div class="form-text">
					<input type="text" name="email" class="text" value="Input your E-Mail" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'E-Mail';}" >
					<input type="password" name="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
				</div>
					<input type="submit"value="GO" >
			</form>
	</div>

<!--/User-Login-->
<!--start-copyright-->
<div class="copy-right">
	<p>Template by <a href="#"> 요기조기<p> 
</div>
<!--//end-copyright-->	
</body>
</html>