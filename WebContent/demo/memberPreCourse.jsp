<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@page import="board.BoardBean"%>
<%@page import="java.util.Vector"%>
<jsp:useBean id="bMgr" class="board.BoardMgr" /> 



<!DOCTYPE html>
<html>
<head>
<title>요기조기 경로장바구니</title>
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

<!--------- 헤더 시작 ----------------------------->

<nav class="navbar navbar-default navbar-fixed-top">
	<div class="header">
		<div class="header-top">
			<div class="wrap">
				
				<div class="num">
						<ul><span style="color: white"><%=session.getAttribute("nameKey")%> 님 환영합니다.</sapn>&nbsp;&nbsp;&nbsp;<a style="color: white"  href="../main/LoginMain.jsp" ><span class="glyphicon glyphicon-log-out"></span> LOGOUT</a></ul>
				
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="header-bottom">
			<div class="logo text-center">
			
		
			
				<a href="main.jsp"><img src="/testfinal/demo/images/mainLogo.jpg" alt=""></a> 
				<div class="memberStatus" style="float: right;margin:5px;">
			
			</h4></div>
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
						<li><a href="course.jsp">GO TRAVELING</a></li>
				 		<li><a href="notify.jsp">공지사항</a></li>
						<li><a href="board.jsp">게시판</a></li>
					  <li class="dropdown">
						<a href="mypage1.jsp" class="dropdown-toggle" data-toggle="dropdown">마이페이지<b class="caret"></b></a>
						<ul class="dropdown-menu multi-column columns-2">
							<div class="row">
								<div class="col-sm-6">
									<ul class="multi-column-dropdown">
										<li><a href="mypage1.jsp">내 정보 조회</a></li>
										<li class="divider"></li>
										<li><a href="mypage2.jsp">회원정보 수정</a></li>
									    <li class="divider"></li>
										<li><a href="mypage3.jsp">탈퇴하기</a></li>
										<li class="divider"></li>
										<li><a href="mypage4.jsp">나의 경로보기</a></li>
										<li class="divider"></li>
										<li><a href="memberPreCourse.jsp">경로바구니</a></li>
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
			</nav></div>
		
		</div>
	</div>
	</nav> 
	<div class="wrap">
		<div class="move-text">
			<div class="breaking_news">
				<h2>공지사항</h2>
			</div>
			<div class="marquee"><div style="width: 100000px; margin-left: 1370px; animation: marqueeAnimation-1795152 6.18248s linear 1s infinite;" class="js-marquee-wrapper"><div class="js-marquee" style="margin-right: 0px; float: left;">
				<div class="marquee1"><a class="breaking" href="single.html">&gt;&gt;게시판디비가 없는듯</a></div>
				<div class="marquee2"><a class="breaking" href="single.html">&gt;&gt;어허허허헣</a></div>
				<div class="clearfix"></div>
			</div></div></div>
			<div class="clearfix"></div>
			<script type="text/javascript" src="js/jquery.marquee.min.js"></script>
			<script>
			  $('.marquee').marquee({ pauseOnHover: true, 
				speed:11000  
			  });
			  //@ sourceURL=pen.js
			</script>
		</div>
	</div>
<!--------- 헤더 끝----------------------------->
<div class="main-body">
		<div class="wrap">
		
			<div class="privacy-page">
				<div class="col-md-8">
		<h3 class="title-head">나의 여행경로</h3>
			<hr style="border-top:2px solid rgba(189, 155, 96, 0.42) ; width:100%">	
		<%
	
int memberID=Integer.parseInt(session.getAttribute("memberIdKey").toString()); 
	int listSize=0;
	bMgr.getCartCourse(memberID);
	Vector<BoardBean> cartList = null;
%>	
				  <!-- <div class="form-group" style="padding:14px;">
                                    <button name="courseDate" >
                                    
                                    <div id="txtHint">여행 경로를 골라 주세요..</div>
                                    </div>
                                   <script >
                                   $(document).ready(function(){
                             
                                		$("#courseDate").click(function(){
                                			showCourse();
                                				/*$.ajax({url: "upGoodCount.jsp?messageID="+MessageID});*/
                                		});
                                		
                                   
                                   function showCourse(){
                                	   var xhttp;
                                	   var memberID=
                                	   xhttp=new XMLHttpRequest();
                                	   xhttp.onreadystatechange=function(){
                                		   if(xhttp.readyState==4&&xhttp.status==200){
                                			  document.getElementById("txtHint").innerHTML=xhttp.responseText; 
                                		   }
                                	   };
                                	   xhttp.open("GET", "getCartCourse.jsp?memberID=",true);
                                	   xhttp.send();
                                   };
                                   });
                                   
                                   </script> -->
                                   
                                   <%
int tourCourseID ;

int tourSiteContentID;
int sequence;
int MemberGroup=5;
int result;

				cartList = bMgr.getCartCourse(memberID);
				  listSize = cartList.size();//브라우저 화면에 보여질 게시물갯수
				  if (cartList.isEmpty()) {
					out.println("등록된 게시물이 없습니다.");
				  } else {
			%>
				
				
					<%
						  for (int i = 0;i<listSize; i++) {
							
							BoardBean bean = cartList.get(i);
							int num = bean.getMessageID();
							int index=bean.getCartIndex();
							tourCourseID = bean.getTourCourseID();
							 
							 tourSiteContentID=bean.getTourSiteContentID();
							sequence=bean.getTourCourseSequence();
							
					%>
					
					<h4><%=index %>코스ID : <%=tourCourseID %> | sequence : <%=sequence %> 
					</h4>
<%}}%>
				
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
</div>
<!--------- 푸터 시작 ----------------------------->
<%@include file="mainFooter.jsp" %>

<!--------- 푸터 끝----------------------------->

</body>
</html>