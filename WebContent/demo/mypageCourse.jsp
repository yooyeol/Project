<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="java.sql.*"%>
	<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
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
<!--/script-->


<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>
</head>

<body>	

	<!-- header-section-starts-here -->
	<%@include file="mainHeader.jsp" %>
	
	<%
		/* String id = session.getAttribute("idKey").toString(); */
		String member2 = session.getAttribute("memberIdKey").toString();
		String course = request.getParameter("course");
		
		
		String sql2 = "select TourCourseSequence,TourSiteTitle,TourSiteAddr,TourSiteFirstImage FROM TOURCOURSE t, TOURSITE site where t.TourSiteContentID = site.TourSiteContentID AND t.MemberID = ? AND t.tourCourseGroup=? order by TourCourseSequence ASC";
		
		

/* 		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null; */
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		} catch (ClassNotFoundException e) {
			out.println("class not found");
		} catch (Exception etc) {
			out.println("etc exception");
			out.println(etc.getMessage());
		}
		try {

			String url = "jdbc:mysql://kitri.iptime.org:3306/YogiJogi?useUnicode=true&characterEncoding=UTF-8";
			String userId = "yogijogi";
			String userPass = "yogijogi";

			conn = DriverManager.getConnection(url, userId, userPass);


			pstmt = conn.prepareStatement(sql2);
			pstmt.setString(1, member2);
			pstmt.setString(2, course);
			rs = pstmt.executeQuery();
			int subsequence = 0;
			String subtitle = "";
			String subaddr = "";
			String subimage = "";
				
			%> 
			
	
	
	
	
	
	
	
	
	
	
	<!-- content-section-starts-here -->
	<div class="main-body">
		<div class="wrap">
		
			<div class="col-md-8 content-left">
			<div class="articles sports">
					<header>
						<h3 class="title-head">나의 여행경로</h3>
					</header>
					<%
			
						while (rs.next()) {
							
							subsequence = rs.getInt(1);
							subtitle = rs.getString(2);
							subaddr = rs.getString(3);
							subimage = rs.getString(4);
							
							 %>
					<div class="article">
						<div class="article-left">
						
			
							<a href="single.html"><img src=<%=subimage%>></a>
	
						</div>
						<div class="article-right">
							<div class="article-title">
								<p>On Feb 25, 2015 <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0 </a><a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>104 </a><a class="span_link" href="#"><span class="glyphicon glyphicon-thumbs-up"></span>52</a></p>
					
								<h1> <%=subsequence %>. <%=subtitle%> </h1>
							</div>
							<div class="article-text">
								<h3><%=subaddr %></h3>
								
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
	<%												
		}
	%>
				</div>

				</div>
			
			<div class="clearfix"></div>
		</div>
	</div>
		<%


		} catch (SQLException e) {
			e.printStackTrace();
			//out.println("SQLException : " + e.getMessage());
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	%> 		
	
	
	<!-- content-section-ends-here -->
	
	<!-- footer-section-starts-here -->
	<%@include file="mainFooter.jsp" %>
	
	<!-- footer-section-ends-here -->
	
	<script type="text/javascript">
		$(document).ready(function() {
				/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
				*/
		$().UItoTop({ easingType: 'easeOutQuart' });
});
</script>
<a href="#to-top" id="toTop" style="display: none;"><span id="toTopHover" style="opacity: 0;"></span> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!---->
</body>
</html>