<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>요기조기 여행추천</title>
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
	<jsp:include page="mainHeader.jsp"></jsp:include>
	
	
	<!-- content-section-starts-here -->
	<div class="main-body">
		<div class="wrap">
			<div class="col-md-8 content-left">
			<header>
						<h3 class="title-head">YOGI JOGI 추천 관광지</h3>
						<br>
					</header>
			
				<div class="slider">
					<div class="callbacks_wrap">
						<ul class="rslides" id="slider">
							<li>
								<img src="http://tong.visitkorea.or.kr/cms/resource/69/1978569_image2_1.jpg" alt="">
								<div class="caption">
									<a href="">거제도</a>
								</div>
							</li>
							<li>
								<img src="http://tong.visitkorea.or.kr/cms/resource/49/1617249_image2_1.jpg" alt="">
								<div class="caption">
									<a href="">제주도</a>
								</div>
							</li>
							<li>
								<img src="http://tong.visitkorea.or.kr/cms/resource/38/218838_image2_1.jpg" alt="">
								<div class="caption">
									<a href="">아침고요수목원</a>
								</div>
							</li>
						</ul>
					</div>
				</div>
				</div>
		<jsp:include page="rightSide.jsp"></jsp:include>
	<%-- 	<%@include file="rightSide.jsp" %>  --%>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- content-section-ends-here -->
	
	
	
	
	<!-- footer-section-starts-here -->
	<%@include file="mainFooter.jsp"%>
	<script type="text/javascript">
		$(document).ready(function() {
				/*
				var defaults = {
				wrapID: 'toTop', // fading element id
				wrapHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
				*/
		$().UItoTop({ easingType: 'easeOutQuart' });
});
</script>
<a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!---->
</body>
</html>