<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String uri = request.getContextPath();
%>

<%-- <jsp:useBean id="mMgr" class="DAO.MemberDAO"></jsp:useBean> --%>


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
<body style="height:1500px">

<script type="text/javascript">
	
	function check() {
	     if (document.searchFrm.keyWord.value == "") {
	   alert("검색어를 입력하세요.");
	   document.searchFrm.keyWord.focus();
	   return;
	     }
	  document.searchFrm.submit();
	 }
</script>

<body style="height:1500px">
</head>
<body>
	<!-- header-section-starts-here -->
	


	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="header">
		<div class="header-top">
			<div class="wrap">
				
				<div class="num">
					<p> Call us : 032 2352 782</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="header-bottom">
			<div class="logo text-center">
			
		
			
				<a href="main.jsp"><img src="<%=uri %>/demo/images/mainLogo.jpg" alt="" /></a> 
				<div class="memberStatus" style="float: right;margin:5px;">
			<h4><%=session.getAttribute("idKey") %>님. 환영합니다.<h4>
			</div>
			</div> 
			
			<div class="navigation">
				<nav class="navbar navbar-default" role="navigation">
		   <div class="wrap">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				
			</div>
			<!--/.navbar-header-->
		
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					 <li><a href="main.jsp">Home</a></li>
						<li ><a href="course.jsp">GO TRAVELING</a></li>
				 		<li ><a href="notify.jsp">공지사항</a></li>
						<li><a href="board.jsp">게시판</a></li>
					  <li class="dropdown">
						<a href="mypage.jsp" class="dropdown-toggle" data-toggle="dropdown">마이페이지<b class="caret"></b></a>
						<ul class="dropdown-menu multi-column columns-2">
							<div class="row">
								<div class="col-sm-4">
									<ul class="multi-column-dropdown">
										<li><a href="mypage.jsp.html">내 정보 조회</a></li>
										<li class="divider"></li>
										<li><a href="memberUpdate.jsp">회원정보 수정</a></li>
									    <li class="divider"></li>
										<li><a href="memberCourse.jsp">나의 경로 보기</a></li>
										<li class="divider"></li>
										<li><a href="memberPreCourse.jsp">경로 바구니</a></li>
										<li class="divider"></li>
										<li><a href="memberOut.jsp">탈퇴하기</a></li>
									</ul>
								</div>
								
							</div>
						</ul>
					</li>
					
				</ul>
				<div class="search">
					<!-- start search-->
				    <div class="search-box">
					    <div id="sb-search" class="sb-search">
							<form>
								<input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search" id="search">
								<input class="sb-search-submit" type="submit" value="">
								<span class="sb-icon-search"> </span>
							</form>
						</div>
				    </div>
					<!-- search-scripts -->
					<script src="js/classie.js"></script>
					<script src="js/uisearch.js"></script>
						<script>
							new UISearch( document.getElementById( 'sb-search' ) );
						</script>
					<!-- //search-scripts -->
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!--/.navbar-collapse-->
	 <!--/.navbar-->
			</div>
		
		</div>
	</div>
	</nav>
	<div class="wrap">
		<div class="move-text">
			<div class="breaking_news">
				<h2>공지사항</h2>
			</div>
			<div class="marquee">
				<div class="marquee1"><a class="breaking" href="single.html">>>게시판디비가 없는듯</a></div>
				<div class="marquee2"><a class="breaking" href="single.html">>>어허허허헣</a></div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
			<script type="text/javascript" src="js/jquery.marquee.min.js"></script>
			<script>
			  $('.marquee').marquee({ pauseOnHover: true });
			  //@ sourceURL=pen.js
			</script>
		</div>
	</div>
	</nav>
	</body>
	</html>