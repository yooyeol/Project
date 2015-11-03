<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mMgr" class="DAO.MemberDAO"></jsp:useBean>


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
			
				<a href="main.jsp"><img " src="images/mainLogo.jpg" alt="" /></a> 
				
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
						<li ><a href="sports.html">GO TRAVELING</a></li>
				 		<li ><a href="sports.html">공지사항</a></li>
						<li><a href="boardMain.jsp">게시판</a></li>
					  <li class="dropdown">
						<a href="mypageMain.jsp" class="dropdown-toggle" data-toggle="dropdown">마이페이지<b class="caret"></b></a>
						<ul class="dropdown-menu multi-column columns-2">
							<div class="row">
								<div class="col-sm-4">
									<ul class="multi-column-dropdown">
										<li><a href="business.html">내 정보 조회</a></li>
										<li class="divider"></li>
										<li><a href="business.html">회원정보 수정</a></li>
									    <li class="divider"></li>
										<li><a href="business.html">나의 경로 보기</a></li>
										<li class="divider"></li>
										<li><a href="business.html">경로 바구니</a></li>
										<li class="divider"></li>
										<li><a href="shortcodes.html">탈퇴하기</a></li>
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
				<div class="marquee1"><a class="breaking" href="single.html">>>The standard chunk of Lorem Ipsum used since the 1500s is reproduced..</a></div>
				<div class="marquee2"><a class="breaking" href="single.html">>>At vero eos et accusamus et iusto qui blanditiis praesentium voluptatum deleniti atque..</a></div>
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
	<!-- content-section-starts-here -->
	<div class="main-body">
		<div class="wrap">

			<div class="privacy-page">
				<div class="col-md-8 content-left">

					<div class="fashion">
						<div class="fashion-top">
							<div class="fashion-left">
								<a href="single.html"><img src="images/f1.jpg"
									class="img-responsive" alt=""></a>
								<div class="blog-poast-info">
									<p class="fdate">
										<span class="glyphicon glyphicon-time"></span>On Jun 20, 2015
										<a class="span_link1" href="#"><span
											class="glyphicon glyphicon-comment"></span>0 </a><a
											class="span_link1" href="#"><span
											class="glyphicon glyphicon-thumbs-up"></span>52</a>
									</p>
								</div>
								<h3>
									<a href="single.html">Contrary to popular belief</a>
								</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
								<a class="reu" href="single.html"><img src="images/more.png"
									alt=""></a>
							</div>
							<div class="fashion-right">
								<a href="single.html"><img src="images/f2.jpg"
									class="img-responsive" alt=""></a>
								<div class="blog-poast-info">
									<p class="fdate">
										<span class="glyphicon glyphicon-time"></span>On Apr 18, 2015
										<a class="span_link1" href="#"><span
											class="glyphicon glyphicon-comment"></span>0 </a><a
											class="span_link1" href="#"><span
											class="glyphicon glyphicon-thumbs-up"></span>52</a>
									</p>
								</div>
								<h3>
									<a href="single.html">Lorem Ipsum is simply</a>
								</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
								<a class="reu" href="single.html"><img src="images/more.png"
									alt=""></a>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="fashion-top">
							<div class="fashion-left">
								<a href="single.html"><img src="images/f3.jpg"
									class="img-responsive" alt=""></a>
								<div class="blog-poast-info">
									<p class="fdate">
										<span class="glyphicon glyphicon-time"></span>On Mar 28, 2015
										<a class="span_link1" href="#"><span
											class="glyphicon glyphicon-comment"></span>0 </a><a
											class="span_link1" href="#"><span
											class="glyphicon glyphicon-thumbs-up"></span>52</a>
									</p>
								</div>
								<h3>
									<a href="single.html">There are many variations</a>
								</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
								<a class="reu" href="single.html"><img src="images/more.png"
									alt=""></a>
							</div>
							<div class="fashion-right">
								<a href="single.html"><img src="images/f4.jpg"
									class="img-responsive" alt=""></a>
								<div class="blog-poast-info">
									<p class="fdate">
										<span class="glyphicon glyphicon-time"></span>On Feb 25, 2015
										<a class="span_link1" href="#"><span
											class="glyphicon glyphicon-comment"></span>0 </a><a
											class="span_link1" href="#"><span
											class="glyphicon glyphicon-thumbs-up"></span>52</a>
									</p>
								</div>
								<h3>
									<a href="single.html">Sed ut perspiciatis</a>
								</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
								<a class="reu" href="single.html"><img src="images/more.png"
									alt=""></a>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="fashion-top">
							<div class="fashion-left">
								<a href="single.html"><img src="images/f5.jpg"
									class="img-responsive" alt=""></a>
								<div class="blog-poast-info">
									<p class="fdate">
										<span class="glyphicon glyphicon-time"></span>On Jan 28, 2015
										<a class="span_link1" href="#"><span
											class="glyphicon glyphicon-comment"></span>0 </a><a
											class="span_link1" href="#"><span
											class="glyphicon glyphicon-thumbs-up"></span>52</a>
									</p>
								</div>
								<h3>
									<a href="single.html">denouncing pleasure</a>
								</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
								<a class="reu" href="single.html"><img src="images/more.png"
									alt=""></a>
							</div>
							<div class="fashion-right">
								<a href="single.html"><img src="images/f6.jpg"
									class="img-responsive" alt=""></a>
								<div class="blog-poast-info">
									<p class="fdate">
										<span class="glyphicon glyphicon-time"></span>On Jan 08, 2015
										<a class="span_link1" href="#"><span
											class="glyphicon glyphicon-comment"></span>0 </a><a
											class="span_link1" href="#"><span
											class="glyphicon glyphicon-thumbs-up"></span>52</a>
									</p>
								</div>
								<h3>
									<a href="single.html">At vero eos et accusamus</a>
								</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
								<a class="reu" href="single.html"><img src="images/more.png"
									alt=""></a>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="fashion-top">
							<div class="fashion-left">
								<a href="single.html"><img src="images/f7.jpg"
									class="img-responsive" alt=""></a>
								<div class="blog-poast-info">
									<p class="fdate">
										<span class="glyphicon glyphicon-time"></span>On Dec 29, 2014
										<a class="span_link1" href="#"><span
											class="glyphicon glyphicon-comment"></span>0 </a><a
											class="span_link1" href="#"><span
											class="glyphicon glyphicon-thumbs-up"></span>52</a>
									</p>
								</div>
								<h3>
									<a href="single.html">On the other hand</a>
								</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
								<a class="reu" href="single.html"><img src="images/more.png"
									alt=""></a>
							</div>
							<div class="fashion-right">
								<a href="single.html"><img src="images/f8.jpg"
									class="img-responsive" alt=""></a>
								<div class="blog-poast-info">
									<p class="fdate">
										<span class="glyphicon glyphicon-time"></span>On Dec 18, 2014
										<a class="span_link1" href="#"><span
											class="glyphicon glyphicon-comment"></span>5 </a><a
											class="span_link1" href="#"><span
											class="glyphicon glyphicon-thumbs-up"></span>22</a>
									</p>
								</div>
								<h3>
									<a href="single.html">blanditiis praesentium</a>
								</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
								<a class="reu" href="single.html"><img src="images/more.png"
									alt=""></a>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>




					<div class="sports-top">
						<div class="s-grid-left"></div>
						<div class="s-grid-right"></div>

					</div>
					<ul class="pagination">
						<li><a href="#">Prev</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">Next</a></li>
					</ul>
				</div>
				<div class="col-md-4 side-bar">
					<div class="first_half">
						<div class="newsletter">

							<form>

								<input type="submit" value="POST">
							</form>
						</div>


						<div class="list_vertical">
							<section class="accordation_menu">
								<div>
									<input id="label-1" name="lida" type="radio" checked="">
									<label for="label-1" id="item1"><i class="ferme"> </i>Popular
										Posts<i class="icon-plus-sign i-right1"></i><i
										class="icon-minus-sign i-right2"></i></label>
									<div class="content" id="a1">
										<div class="scrollbar" id="style-2">
											<div class="force-overflow">
												<div class="popular-post-grids">
													<div class="popular-post-grid">
														<div class="post-img">
															<a href="single.html"><img src="images/bus2.jpg"
																alt=""></a>
														</div>
														<div class="post-text">
															<a class="pp-title" href="single.html"> The section
																of the mass media industry</a>
															<p>
																On Feb 25 <a class="span_link" href="#"><span
																	class="glyphicon glyphicon-comment"></span>3 </a><a
																	class="span_link" href="#"><span
																	class="glyphicon glyphicon-eye-open"></span>56 </a>
															</p>
														</div>
														<div class="clearfix"></div>
													</div>
													<div class="popular-post-grid">
														<div class="post-img">
															<a href="single.html"><img src="images/bus1.jpg"
																alt=""></a>
														</div>
														<div class="post-text">
															<a class="pp-title" href="single.html"> Lorem Ipsum
																is simply dummy text printing</a>
															<p>
																On Apr 14 <a class="span_link" href="#"><span
																	class="glyphicon glyphicon-comment"></span>2 </a><a
																	class="span_link" href="#"><span
																	class="glyphicon glyphicon-eye-open"></span>56 </a>
															</p>
														</div>
														<div class="clearfix"></div>
													</div>
													<div class="popular-post-grid">
														<div class="post-img">
															<a href="single.html"><img src="images/bus3.jpg"
																alt=""></a>
														</div>
														<div class="post-text">
															<a class="pp-title" href="single.html">There are many
																variations of Lorem</a>
															<p>
																On Jun 25 <a class="span_link" href="#"><span
																	class="glyphicon glyphicon-comment"></span>0 </a><a
																	class="span_link" href="#"><span
																	class="glyphicon glyphicon-eye-open"></span>56 </a>
															</p>
														</div>
														<div class="clearfix"></div>
													</div>
													<div class="popular-post-grid">
														<div class="post-img">
															<a href="single.html"><img src="images/bus4.jpg"
																alt=""></a>
														</div>
														<div class="post-text">
															<a class="pp-title" href="single.html">Sed ut
																perspiciatis unde omnis iste natus</a>
															<p>
																On Jan 25 <a class="span_link" href="#"><span
																	class="glyphicon glyphicon-comment"></span>1 </a><a
																	class="span_link" href="#"><span
																	class="glyphicon glyphicon-eye-open"></span>56 </a>
															</p>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div>
									<input id="label-2" name="lida" type="radio"> <label
										for="label-2" id="item2"><i class="icon-leaf" id="i2"></i>Recent
										Posts<i class="icon-plus-sign i-right1"></i><i
										class="icon-minus-sign i-right2"></i></label>
									<div class="content" id="a2">
										<div class="scrollbar" id="style-2">
											<div class="force-overflow">
												<div class="popular-post-grids">
													<div class="popular-post-grid">
														<div class="post-img">
															<a href="single.html"><img src="images/tec2.jpg"
																alt=""></a>
														</div>
														<div class="post-text">
															<a class="pp-title" href="single.html"> The section
																of the mass media industry</a>
															<p>
																On Feb 25 <a class="span_link" href="#"><span
																	class="glyphicon glyphicon-comment"></span>3 </a><a
																	class="span_link" href="#"><span
																	class="glyphicon glyphicon-eye-open"></span>56 </a>
															</p>
														</div>
														<div class="clearfix"></div>
													</div>
													<div class="popular-post-grid">
														<div class="post-img">
															<a href="single.html"><img src="images/tec1.jpg"
																alt=""></a>
														</div>
														<div class="post-text">
															<a class="pp-title" href="single.html"> Lorem Ipsum
																is simply dummy text printing</a>
															<p>
																On Apr 14 <a class="span_link" href="#"><span
																	class="glyphicon glyphicon-comment"></span>2 </a><a
																	class="span_link" href="#"><span
																	class="glyphicon glyphicon-eye-open"></span>56 </a>
															</p>
														</div>
														<div class="clearfix"></div>
													</div>
													<div class="popular-post-grid">
														<div class="post-img">
															<a href="single.html"><img src="images/tec3.jpg"
																alt=""></a>
														</div>
														<div class="post-text">
															<a class="pp-title" href="single.html">There are many
																variations of Lorem</a>
															<p>
																On Jun 25 <a class="span_link" href="#"><span
																	class="glyphicon glyphicon-comment"></span>0 </a><a
																	class="span_link" href="#"><span
																	class="glyphicon glyphicon-eye-open"></span>56 </a>
															</p>
														</div>
														<div class="clearfix"></div>
													</div>
													<div class="popular-post-grid">
														<div class="post-img">
															<a href="single.html"><img src="images/tec4.jpg"
																alt=""></a>
														</div>
														<div class="post-text">
															<a class="pp-title" href="single.html">Sed ut
																perspiciatis unde omnis iste natus</a>
															<p>
																On Jan 25 <a class="span_link" href="#"><span
																	class="glyphicon glyphicon-comment"></span>1 </a><a
																	class="span_link" href="#"><span
																	class="glyphicon glyphicon-eye-open"></span>56 </a>
															</p>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div>
									<input id="label-3" name="lida" type="radio"> <label
										for="label-3" id="item3"><i class="icon-trophy"
										id="i3"></i>Comments<i class="icon-plus-sign i-right1"></i><i
										class="icon-minus-sign i-right2"></i></label>



									<form>

										<input type="submit" value="submit">
									</form>
								</div>

								<div class="content" id="a3">
									<div class="scrollbar" id="style-2">
										<div class="force-overflow">
											<div class="response">
												<div class="media response-info">
													<div class="media-left response-text-left">
														<a href="#"> <img class="media-object"
															src="images/icon1.png" alt="">
														</a>
														<h5>
															<a href="#">Username</a>
														</h5>
													</div>
													<div class="media-body response-text-right">
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing
															elit,There are many variations of passages of Lorem Ipsum
															available, sed do eiusmod tempor incididunt ut labore et
															dolore magna aliqua.</p>
														<ul>
															<li>MARCH 21, 2015</li>
															<li><a href="single.html">Reply</a></li>
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
												<div class="media response-info">
													<div class="media-left response-text-left">
														<a href="#"> <img class="media-object"
															src="images/icon1.png" alt="">
														</a>
														<h5>
															<a href="#">Username</a>
														</h5>
													</div>
													<div class="media-body response-text-right">
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing
															elit,There are many variations of passages of Lorem Ipsum
															available, sed do eiusmod tempor incididunt ut labore et
															dolore magna aliqua.</p>
														<ul>
															<li>MARCH 26, 2015</li>
															<li><a href="single.html">Reply</a></li>
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
												<div class="media response-info">
													<div class="media-left response-text-left">
														<a href="#"> <img class="media-object"
															src="images/icon1.png" alt="">
														</a>
														<h5>
															<a href="#">Username</a>
														</h5>
													</div>
													<div class="media-body response-text-right">
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing
															elit,There are many variations of passages of Lorem Ipsum
															available, sed do eiusmod tempor incididunt ut labore et
															dolore magna aliqua.</p>
														<ul>
															<li>MAY 25, 2015</li>
															<li><a href="single.html">Reply</a></li>
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
												<div class="media response-info">
													<div class="media-left response-text-left">
														<a href="#"> <img class="media-object"
															src="images/icon1.png" alt="">
														</a>
														<h5>
															<a href="#">Username</a>
														</h5>
													</div>
													<div class="media-body response-text-right">
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing
															elit,There are many variations of passages of Lorem Ipsum
															available, sed do eiusmod tempor incididunt ut labore et
															dolore magna aliqua.</p>
														<ul>
															<li>FEB 13, 2015</li>
															<li><a href="single.html">Reply</a></li>
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
												<div class="media response-info">
													<div class="media-left response-text-left">
														<a href="#"> <img class="media-object"
															src="images/icon1.png" alt="">
														</a>
														<h5>
															<a href="#">Username</a>
														</h5>
													</div>
													<div class="media-body response-text-right">
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing
															elit,There are many variations of passages of Lorem Ipsum
															available, sed do eiusmod tempor incididunt ut labore et
															dolore magna aliqua.</p>
														<ul>
															<li>JAN 28, 2015</li>
															<li><a href="single.html">Reply</a></li>
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
												<div class="media response-info">
													<div class="media-left response-text-left">
														<a href="#"> <img class="media-object"
															src="images/icon1.png" alt="">
														</a>
														<h5>
															<a href="#">Username</a>
														</h5>
													</div>
													<div class="media-body response-text-right">
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing
															elit,There are many variations of passages of Lorem Ipsum
															available, sed do eiusmod tempor incididunt ut labore et
															dolore magna aliqua.</p>
														<ul>
															<li>APR 18, 2015</li>
															<li><a href="single.html">Reply</a></li>
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
												<div class="media response-info">
													<div class="media-left response-text-left">
														<a href="#"> <img class="media-object"
															src="images/icon1.png" alt="">
														</a>
														<h5>
															<a href="#">Username</a>
														</h5>
													</div>
													<div class="media-body response-text-right">
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing
															elit,There are many variations of passages of Lorem Ipsum
															available, sed do eiusmod tempor incididunt ut labore et
															dolore magna aliqua.</p>
														<ul>
															<li>DEC 25, 2014</li>
															<li><a href="single.html">Reply</a></li>
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
										</div>

									</div>
								</div>
							</section>
						</div>

					</div>
					<div class="side-bar-articles">
						<div class="side-bar-article">
							<a href="single.html"></a>

						</div>
						<div class="side-bar-article">
							<a href="single.html"></a>

						</div>
						<div class="side-bar-article">
							<a href="single.html"></a>

						</div>
					</div>
				</div>
				<div class="secound_half"></div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<!-- content-section-ends-here -->
	<!-- footer-section-starts-here -->
	<div class="footer">
		<div class="footer-top">
			<div class="wrap">
				<div class="col-md-3 col-xs-6 col-sm-4 footer-grid">
					<h4 class="footer-head">About Us</h4>
					<p>It is a long established fact that a reader will be
						distracted by the readable content of a page when looking at its
						layout.</p>
					<p>The point of using Lorem Ipsum is that it has a more-or-less
						normal distribution of letters, as opposed to using 'Content here.</p>
				</div>
				<div class="col-md-2 col-xs-6 col-sm-2 footer-grid">
					<h4 class="footer-head">Categories</h4>
					<ul class="cat">
						<li><a href="business.html">Business</a></li>
						<li><a href="technology.html">Technology</a></li>
						<li><a href="entertainment.html">Entertainment</a></li>
						<li><a href="sports.html">Sports</a></li>
						<li><a href="shortcodes.html">Health</a></li>
						<li><a href="fashion.html">Fashion</a></li>
					</ul>
				</div>
				<div class="col-md-4 col-xs-6 col-sm-6 footer-grid">
					<h4 class="footer-head">Flickr Feed</h4>
					<ul class="flickr">
						<li><a href="#"><img src="images/bus4.jpg"></a></li>
						<li><a href="#"><img src="images/bus2.jpg"></a></li>
						<li><a href="#"><img src="images/bus3.jpg"></a></li>
						<li><a href="#"><img src="images/tec4.jpg"></a></li>
						<li><a href="#"><img src="images/tec2.jpg"></a></li>
						<li><a href="#"><img src="images/tec3.jpg"></a></li>
						<li><a href="#"><img src="images/bus2.jpg"></a></li>
						<li><a href="#"><img src="images/bus3.jpg"></a></li>
						<div class="clearfix"></div>
					</ul>
				</div>
				<div class="col-md-3 col-xs-12 footer-grid">
					<h4 class="footer-head">Contact Us</h4>
					<span class="hq">Our headquaters</span>
					<address>
						<ul class="location">
							<li><span class="glyphicon glyphicon-map-marker"></span></li>
							<li>CENTER FOR FINANCIAL ASSISTANCE TO DEPOSED NIGERIAN
								ROYALTY</li>
							<div class="clearfix"></div>
						</ul>
						<ul class="location">
							<li><span class="glyphicon glyphicon-earphone"></span></li>
							<li>+0 561 111 235</li>
							<div class="clearfix"></div>
						</ul>
						<ul class="location">
							<li><span class="glyphicon glyphicon-envelope"></span></li>
							<li><a href="mailto:info@example.com">mail@example.com</a></li>
							<div class="clearfix"></div>
						</ul>
					</address>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="wrap">
				<div class="copyrights col-md-6">
					<p>
						© 2015 Express News. All Rights Reserved | Design by <a
							href="http://w3layouts.com/"> W3layouts</a>
					</p>
				</div>
				<div class="footer-social-icons col-md-6">
					<ul>
						<li><a class="facebook" href="#"></a></li>
						<li><a class="twitter" href="#"></a></li>
						<li><a class="flickr" href="#"></a></li>
						<li><a class="googleplus" href="#"></a></li>
						<li><a class="dribbble" href="#"></a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
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
			$().UItoTop({
				easingType : 'easeOutQuart'
			});
		});
	</script>
	<a href="#to-top" id="toTop" style="display: none;"><span
		id="toTopHover"></span><span id="toTopHover"></span><span
		id="toTopHover"></span><span id="toTopHover"></span><span
		id="toTopHover"></span> <span id="toTopHover" style="opacity: 1;">
	</span></a>
	<!---->

	<a href="#" id="toTop">To Top</a>
	<a href="#" id="toTop">To Top</a>
	<a href="#" id="toTop">To Top</a>
	<a href="#" id="toTop">To Top</a>

	<a href="#" id="toTop">To Top</a>
</body>
</html>