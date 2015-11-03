<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Wandering  A Travel category Flat bootstrap Responsive  Website Template | Home :: w3layouts</title>
<link href="cssSNS/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="jsSNS/jquery-1.11.0.min.js"></script>
<!-- Custom Theme files -->
<link href="cssSNS/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Wandering Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
<!-- //end-smoth-scrolling -->
</head>
<body>
<!--header start here-->
<div class="header-strip"> 

</div>
<div class="header">
	<div class="container">
		<div class="header-main">
			  <div class="logo">
			  	<h1><a href="index.html">Wandering</a></h1>
			  </div>
        </div>
	</div>
</div>			
<div class="navg-strip">
    <div class="container">
      <div class="navg-main">
		 <div class="top-nav">
		 	 <span class="menu"> <img src="images/icon.png" alt=""/></span>
			<ul class="res">
				<li><a href="index.html" class="active">Home</a></li>
				<li><a class="scroll" href="#about">About Us</a></li>
				<li><a class="scroll" href="#services">Services</a></li>
				<li><a class="scroll" href="#gallery">Gallery</a></li>
				<li><a class="scroll" href="#contact">Contact</a></li>
		
			</ul>
			<!--script-->
						<script>
							$("span.menu").click(function(){
								$("ul.res").slideToggle(500, function(){
								});
							});
					</script>		
		 </div>
		 <div class="header-right">
			<div class="social-icons">
				<ul>
				<li><a href="#"><span class="fa"> </span></a></li>
				<li><a href="#"><span class="tw"> </span></a></li>
				<li><a href="#"><span class="g"> </span></a></li>
				<li><a href="#"><span class="in"> </span></a></li>
				<li><a href="#"><span class="pin"> </span></a></li>
				<li><a href="#"><span class="you"> </span></a></li>
			</ul>
			</div>
			<div class="search-in" >
				<div class="search" >
					<form >
						<input type="text"  class="text">
						<input type="submit" value="SEARCH">
					</form>
				<!-- 	<div class="close-in"><img src="images/s-close.png" alt="" /></div> -->
				</div>
				<div class="right"><button> </button></div>
		   </div>
		   <script type="text/javascript">
				$('.search').hide();
				$('button').click(function (){
				$('.search').show();
				$('.text').focus();
				}
				);
				$('.close-in').click(function(){
				$('.search').hide();
				});
			</script>

		  <div class="clearfix"> </div>
		</div>
	  <div class="clearfix"> </div>
   </div>
  </div>
</div>
<!--header end here-->
<!--banner start here-->
<!-- <div class="banner">
	<div class="container">
		<div class="banner-main">
			<h2>Lorem Ipsum is simply text</h2>
			<p>Lorem Ipsum is not simply random text. It has roots in a piece</p>
		</div>
	</div>
</div> -->
<!--banner end here-->
<!--about start here-->

<!--about end here-->
<!--ab-info start here-->

<div style="background-color: #f5f6f7" class="about" id="about">
	<div class="content">
	<div class="container">
		<div class="about-main">
			<div class="about-bottom">
	
			
			        <!-- These are our grid blocks -->
			      
						<div style="margin-bottom: 20px" class="l_g">
							<div class="col-md-3 praesent">
								<div class="l_g_r">
									<div style="background-color: #fff" class="dapibus">
										<h2>Praesent dapibusneque id cursus faucioibus tortor neque tiegetas augue</h2>
										<p class="adm">Posted by <a href="#">Admin</a>  |  7 days ago</p>
										<a href="snsDetail.jsp"><img src="snsSet/images/img1.jpg" class="img-responsive" alt=""></a>
										<p>Phasellus ultrices nulla quis nibh. Quisque a lectus. Donec consectetuer ligula vulputate. </p>
										<a href="snsDetail.jsp" class="link1">Read More</a>
									</div>
								</div>
							</div>
							<div class="col-md-3 integ">
								<div class="l_g_r">
									<div class="integer">
										<h3>Integer vitae libero ac risus egestas</h3>
										<p class="adm">Posted by <a href="#">Admin</a>  |  7 days ago</p>
										<a href="snsDetail.jsp"><img src="snsSet/images/img3.jpg" class="img-responsive" alt=""></a>
										<p>Sed adipiscing ornare risus. Morbi est est, blandit sit amet, sagittis vel, euismod vel ipsum dolor.</p>
										<a href="snsDetail.jsp" class="link1">Read More</a>
									</div>
								</div>
							</div>
							<div class="col-md-3 integ">
								<div class="l_g_r">
									<div class="dapibus">
										<h3>Integer vitae libero risus egestas</h3>
										<p class="adm">Posted by <a href="#">Admin</a>  |  7 days ago</p>
										<a href="snsDetail.jsp"><img src="snsSet/images/2222.jpg" class="img-responsive" alt=""></a>
										<p>Morbi interdum mollis sapien. Sed ac risus. Phasellus lacinia, magna a ullamcorper laoreet, lectus arcu pulvinar risus, vitae facilis</p>
										<a href="snsDetail.jsp" class="link1">Read More</a>
									</div>
								</div>
							</div>
						<div class="col-md-3 integ">
								<div class="l_g_r">
									<div class="posts">
										<h4>Recent posts</h4>
										<h6><a href="#">Aliquam tincidunt mauris</a></h6>
										<h6><a href="#">Vestibulum auctor lipsum</a></h6>
										<h6><a href="#">Nunc dignissim risus</a></h6>
										<h6><a href="#">Cras ornare tristiqu</a></h6>
									</div>
									<div class="comments">
										<h4>Recent Comments</h4>
										<h6><a href="#">Amada Doe <span>on</span> Hello World!</a></h6>
										<h6><a href="#">Peter Doe <span>on</span> Photography</a></h6>
										<h6><a href="#">Steve Roberts <span>on</span> HTML5/CSS3</a></h6>
										<h6><a href="#">Doe Peter<span>on</span> Photography</a></h6>
									</div>
									<div class="archievs">
										<h4>Archives</h4>
										<h6><a href="#">October 2013</a></h6>
										<h6><a href="#">September 2013</a></h6>
										<h6><a href="#">August 2013</a></h6>
										<h6><a href="#">July 2013</a></h6>
									</div>

								</div>
							</div>
							<div class="clearfix1"></div> 
						</div>
					
					<!-- ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd-->
					<div style="margin-bottom: 20px" class="l_g">
							<div class="col-md-3 praesent">
								<div class="l_g_r">
									<div style="background-color: #fff" class="dapibus">
										<h2>Praesent dapibusneque id cursus faucioibus tortor neque tiegetas augue</h2>
										<p class="adm">Posted by <a href="#">Admin</a>  |  7 days ago</p>
										<a href="snsDetail.jsp"><img src="snsSet/images/img1.jpg" class="img-responsive" alt=""></a>
										<p>Phasellus ultrices nulla quis nibh. Quisque a lectus. Donec consectetuer ligula vulputate. </p>
										<a href="snsDetail.jsp" class="link1">Read More</a>
									</div>
								</div>
							</div>
							<div class="col-md-3 integ">
								<div class="l_g_r">
									<div class="integer">
										<h3>Integer vitae libero ac risus egestas</h3>
										<p class="adm">Posted by <a href="#">Admin</a>  |  7 days ago</p>
										<a href="snsDetail.jsp"><img src="snsSet/images/img3.jpg" class="img-responsive" alt=""></a>
										<p>Sed adipiscing ornare risus. Morbi est est, blandit sit amet, sagittis vel, euismod vel ipsum dolor.</p>
										<a href="snsDetail.jsp" class="link1">Read More</a>
									</div>
								</div>
							</div>
							<div class="col-md-3 integ">
								<div class="l_g_r">
									<div class="dapibus">
										<h3>Integer vitae libero risus egestas</h3>
										<p class="adm">Posted by <a href="#">Admin</a>  |  7 days ago</p>
										<a href="snsDetail.jsp"><img src="snsSet/images/2222.jpg" class="img-responsive" alt=""></a>
										<p>Morbi interdum mollis sapien. Sed ac risus. Phasellus lacinia, magna a ullamcorper laoreet, lectus arcu pulvinar risus, vitae facilis</p>
										<a href="snsDetail.jsp" class="link1">Read More</a>
									</div>
								</div>
							</div>
						
							<div class="clearfix1"></div> 
						</div>
					
					<!-- fdfsfdsfsd -->
						<div style="margin-bottom: 20px" class="l_g">
							<div class="col-md-3 praesent">
								<div class="l_g_r">
									<div class="dapibus">
										<h3>CURSUS FAUCIO</h3>
										<p class="adm">Posted by <a href="#">Admin</a>  |  7 days ago</p>
										<a href="snsDetail.jsp"><img src="snsSet/images/img2.jpg" class="img-responsive" alt=""></a>
										<p>Phasellus ultrices nulla. </p>
										<a href="snsDetail.jsp" class="link1">Read More</a>
									</div>
								</div>
							</div>
							<div class="col-md-3 integ">
								<div class="l_g_r">
									<div class="integer">
										<h3>Aliquam tincidunt mauris eu risus</h3>
										<p class="adm">Posted by <a href="#">Admin</a>  |  7 days ago</p>
										<p>Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.</p>
										<a href="snsDetail.jsp" class="link1">Read More</a>
									</div>
								</div>
							</div>
							<div class="col-md-3 integ">
								<div class="l_g_r">
									<div class="lorem">
										<h3>Lorem ipsum dolor</h3>
										<p class="adm">Posted by <a href="#">Admin</a>  |  7 days ago</p>
										<iframe src="//player.vimeo.com/video/78517603" width="220px" height="" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen=""></iframe>
										<p>Pellentesque odio nisi, euismod in, pharetra a, ultricies in.</p>
										<a href="snsDetail.jsp" class="link1">Read More</a>
									</div>
								</div>
							</div>
								<div class="col-md-3 integ">
								<div class="l_g_r">
									<div class="categories">
										<h4>Categories</h4>
										<h6><a href="#">Vivamus vestibulum nulla</a></h6>
										<h6><a href="#">Integer vitae libero ac risus e</a></h6>
										<h6><a href="#">Vestibulum commo</a></h6>
										<h6><a href="#">Cras iaculis ultricies</a></h6>
									</div>
								</div>
							</div>
							<div class="clearfix1"></div>
							</div>
							
						
							
						
					
			        <!----/////////////////////////////////////////////////--->
				
						<div style="margin-bottom: 20px" class="l_g">
							<div class="col-md-3 praesent">
								<div class="l_g_r">
									<div class="dapibus">
										<h2>Praesent dapibusneque id cursus faucioibus tortor neque tiegetas augue</h2>
										<p class="adm">Posted by <a href="#">Admin</a>  |  7 days ago</p>
										<a href="snsDetail.jsp"><img src="snsSet/images/img10.jpg" class="img-responsive" alt=""></a>
										<p>Phasellus ultrices nulla quis nibh. Quisque a lectus. Donec consectetuer ligula vulputate. </p>
										<a href="snsDetail.jsp" class="link1">Read More</a>
									</div>
								</div>
							</div>
							<div class="col-md-3 integ">
								<div class="l_g_r">
									<div class="vitae">
										<h3>Integer vitae libero risus egestas</h3>
										<p class="adm">Posted by <a href="#">Admin</a>  |  7 days ago</p>
										<a href="snsDetail.jsp"><img src="snsSet/images/img4.jpg" class="img-responsive" alt=""></a>
										<p>Sed adipiscing ornare risus. Morbi est est, blandit sit amet</p>
										<a href="snsDetail.jsp" class="link1">Read More</a>
									</div>

								</div>
							</div>
							<div class="col-md-3 praesent">
								<div class="l_g_r">
									<div class="integer">
										<h3>Praesent dapibusn id cursus</h3>
										<p class="adm">Posted by <a href="#">Admin</a>  |  7 days ago</p>
										<a href="snsDetail.jsp"><img src="images/img11.jpg" class="img-responsive" alt=""></a>
										<p>Phasellus ultrices nulla quis nibh. Quisque a lectus. Donec consectetuer ligula vulputate. </p>
										<a href="snsDetail.jsp" class="link1">Read More</a>
									</div>
								</div>
							</div>
								<div class="clearfix1"></div>
							</div>
							
						
						
						
					
			      
			     
				  <div id="loadMore">Load more</div>
	<div id="showLess">Show less</div>

			
						
					<!-- <a href="single.html"><img src="images/ab.jpg" alt="" class="img-responsive"></a>
					<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores</p>
				 -->
			  <div class="clearfix1"> </div>
			</div>
		</div>
	</div>
	</div>
</div>



<!--footer start here-->

</body>
</html>
