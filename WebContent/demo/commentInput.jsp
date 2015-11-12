<%@page import="javafx.scene.web.WebView"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <jsp:useBean id="mMgr" class="DAO.MemberDAO"></jsp:useBean>
 --%>
<%@page import="board.BoardBean"%>

<%@ page import="java.io.*,java.util.zip.*" %>
<jsp:useBean id="bMgr" class="board.BoardMgr" />
<jsp:useBean id="bean" class="board.BoardBean" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<title>Express News a Entertainment Category Flat Bootstarp responsive Website Template | Home :: w3layouts</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Express News Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- for bootstrap working -->
	<script type="text/javascript" src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- web-fonts -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
<link href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css' rel='styleseet' type'text/css'>
  
 <!--  
 
<script src="js/responsiveslides.min.js"></script>
	<script>
		$(function () {
		  $("#slider").responsiveSlides({
			auto: true,
			nav: true,
			speed: 500,
			namespace: "callbacks",
			pager: true,
		  });
		});
	</script>
	<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
/script
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script> -->
</head>
<body>
<%String num=request.getParameter("num");

%>
		<div class="coment-form"  method="post" action="commentInputProc.jsp" enctype="multipart/form-data">
				<h2 >Leave your comment</h2></br>
					
				
					<form name="postFrm" method="post" action="commentInputProc.jsp" enctype="multipart/form-data">
						<h4><%out.print("ID : "+session.getAttribute("idKey")); %></h4>
						 <div class="form-group" style="padding:14px;">
                                      <textarea id="textArea" class="form-control"  name="content"> </textarea>
                                    </div>
                                    
                          <input type="hidden" name="num" value="<%=num %>"    >   
                         
  
						<input type="submit" value="Submit Comment" >
					</form>
				</div>	
				


</body>
</html>