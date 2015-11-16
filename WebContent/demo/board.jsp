<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@page import="board.BoardBean"%>
<%@page import="java.util.Vector"%>
<jsp:useBean id="bMgr" class="board.BoardMgr" /> 


<%-- <%
	String uri = request.getContextPath();
%>
   --%>  
<%-- <jsp:useBean id="mMgr" class="DAO.MemberDAO"></jsp:useBean> --%>


<!DOCTYPE html>
<html>
<head>
<title>요기조기 게시판</title>
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


<%	
	  request.setCharacterEncoding("UTF-8");
	  
      int totalRecord=0; //전체레코드수
	  int numPerPage=6; // 페이지당 레코드 수 
	  int pagePerBlock=15;  //블럭당 페이지수 
	  
	  int totalPage=0; //전체 페이지 수
	  int totalBlock=0;  //전체 블럭수 

	  int nowPage=1; // 현재페이지
	  int nowBlock=1;  //현재블럭
	  
	  int start=0; //디비의 select 시작번호
	  int end=6; //시작번호로 부터 가져올 select 갯수
	  
	  int listSize=0; //현재 읽어온 게시물의 수
	  

	  
	String keyWord = "", keyField = "";
	Vector<BoardBean> vlist = null;
	if (request.getParameter("keyWord") != null) {
		keyWord = request.getParameter("keyWord");
		keyField = request.getParameter("keyField");
	}

	if (request.getParameter("reload") != null){
		if(request.getParameter("reload").equals("true")) {
			keyWord = "";
			keyField = "";
		}
	}
	
	if (request.getParameter("nowPage") != null) {
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	}
	 start=(nowPage * numPerPage)-numPerPage;
	 end= start+numPerPage;
	 
	totalRecord = bMgr.getTotalCount(keyField, keyWord);
	totalPage =(int)Math.ceil((double)totalRecord / numPerPage);  //전체페이지수
	nowBlock= (int)Math.ceil((double)nowPage/pagePerBlock); //현재블럭 계산
	  
	totalBlock =(int)Math.ceil((double)totalPage / pagePerBlock);  //전체블럭계산
%>


<script type="text/javascript">
	function list() {
		document.listFrm.action = "board.jsp";
		document.listFrm.submit();
	}
	
	function pageing(page) {
		document.readFrm.nowPage.value = page;
		document.readFrm.submit();
	}
	
	function block(value){
		 document.readFrm.nowPage.value=<%=pagePerBlock%>*(value-1)+1;
		 document.readFrm.submit();
	} 
	
	function read(num){
		document.readFrm.num.value=num;
		document.readFrm.action="boardDetail.jsp";
		document.readFrm.submit();
	}
	
	function upGoodCount(num){
		document.readFrm.num.value=num;
		document.readFrm.action="upGoodCountProc.jsp";
		document.readFrm.submit();
	}
	
	
	
	function check() {
	     if (document.searchFrm.keyWord.value == "") {
	   alert("검색어를 입력하세요.");
	   document.searchFrm.keyWord.focus();
	   return;
	     }
	  document.searchFrm.submit();
	 }
</script>


</head>
<body>
	<!-- header-section-starts-here -->
	
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


	<!-- content-section-starts-here -->	<!-- content-section-starts-here -->	<!-- content-section-starts-here -->	<!-- content-section-starts-here -->
		<!-- content-section-starts-here -->	<!-- content-section-starts-here -->	<!-- content-section-starts-here -->	<!-- content-section-starts-here -->
	<div class="main-body">
		<div class="wrap">

			<div class="privacy-page">
			
				<div class="col-md-8">
			<%
				  vlist = bMgr.getBoardList(keyField, keyWord, start, end);
				  listSize = vlist.size();//브라우저 화면에 보여질 게시물갯수
				  if (vlist.isEmpty()) {
					out.println("등록된 게시물이 없습니다.");
				  } else {
			%>
				
				
					<%
						  for (int i = 0;i<numPerPage; i++) {
							if (i == listSize) break;
							BoardBean bean = vlist.get(i);
							int num = bean.getMessageID();
							BoardBean beanContent = bMgr.getBoard(num);//게시물 가져오기
							String name = bean.getMemberEmail();
							String subject = bean.getMessageTitle();
							String postdate = bean.getMessagePostDate();
							String content=beanContent.getMessageContent();
							
							int readcount = bean.getMessageClick();
							int goodcount=bean.getMessageGoodCount();
							int poorcount = bean.getMessagePoorCount();
					%>
					
						
		


					<div class="fashion">
						<div class="fashion-top">
						
					
						<div class="fashion-left">
						
					
						
								<a href="javascript:read('<%=num%>')"><img src="" 
									class="img-responsive" alt=""></a>
								<div class="blog-poast-info">
									<p class="fdate">
									<%=num %>
										<span>작성자 : <%=name%></span>
										<span class="glyphicon glyphicon-time"></span><%=postdate%>
										<span>조회수 : <%=readcount%></span>
										
										<a class="span_link1" href="javascript:comment('<%=num%>')">
										 <span class="glyphicon glyphicon-comment"></span> 0</a>
											
										<a class="span_link1" href="javascript:upGoodCount('<%=num%>')">
										 <span class="glyphicon glyphicon-heart-empty"></span> <%=goodcount %></a>
										<a class="span_link1" href="javascript:">
										 <span class="glyphicon glyphicon-thumbs-down"></span> <%=poorcount %></a>
									</p>
								</div>
								<h3>
								 <a href="javascript:read('<%=num%>')"><%=subject%></a>
								
								</h3>
								<p><%=content %></p>
								<a class="reu" href="javascript:read('<%=num%>')"><img src="images/more.png"
									alt=""></a>
							</div>
							
						
						
						</div>
				</div>
																				
<%}//for%>
				 <%
 			}//if
 		%>
 		
 		<div class="clearfix"></div>
 		<ul class="pagination">
 		<%
   				  int pageStart = (nowBlock -1)*pagePerBlock + 1 ; //하단 페이지 시작번호
   				  int pageEnd = ((pageStart + pagePerBlock ) <= totalPage) ?  (pageStart + pagePerBlock): totalPage+1; 
   				  //하단 페이지 끝번호
   				  if(totalPage !=0){
    			  	if (nowBlock >= 1) {%>
    			  	
    			  
						<li><a href="javascript:block('<%=nowBlock-1%>')">Prev</a></li><%}%>&nbsp; 
    			  		<%for ( ; pageStart < pageEnd; pageStart++){%>
    			  		<li><a href="javascript:pageing('<%=pageStart %>')">
    			  		<%if(pageStart==nowPage) {%><font color="red"> <%}%>
    			  		<%=pageStart %>
    			  		<%if(pageStart==nowPage) {%></font> <%}%></a> 
    			  		<%}//for%>&nbsp; 
    			  		<%if (totalBlock > nowBlock ) {%>
    			  		<a href="javascript:block('<%=nowBlock+1%>')">NEXT</a>
    			  		<%}%>&nbsp;  
   						<%}%>
    			  		</a></li>
    			  		</ul>
    			  		
    		
 				<!-- 페이징 및 블럭 처리 End-->
				
 		
											
				</div>
				
				
				
				
				<div style="float:right;"class="col-md-4 side-bar">
					<div class="first_half">
						<div class="newsletter">

							<form action="boardPost.jsp">

								<input type="submit" value="POST">
							</form>
						</div>


					<div class="list_vertical">
							<section class="accordation_menu">
								<div>
									<input id="label-1" name="lida" type="radio" checked="">
									<label for="label-1" id="item1"><i class="ferme"> </i>Poppular
										Posts<i class="icon-plus-sign i-right1"></i><i
										class="icon-minus-sign i-right2"></i></label>
									<div class="content" id="a1">
										<div class="scrollbar" id="style-2">
											<div class="force-overflow">
												<div class="popular-post-grids">
													
					
						
												
													<div class="popular-post-grid">
												<%
				  vlist = bMgr.getBoardList(keyField, keyWord, start, 20);
				  listSize = vlist.size();//브라우저 화면에 보여질 게시물갯수
				  if (vlist.isEmpty()) {
					out.println("등록된 게시물이 없습니다.");
				  } else {
			%>
				
				
					<%
						  for (int i = 0;i<21; i++) {
							if (i == listSize) break;
							BoardBean bean = vlist.get(i);
							int num = bean.getMessageID();
							BoardBean beanContent = bMgr.getBoard(num);//게시물 가져오기
							String name = bean.getMemberEmail();
							String subject = bean.getMessageTitle();
							String postdate = bean.getMessagePostDate();
							String content=beanContent.getMessageContent();
							
							int readcount = bean.getMessageClick();
							int goodcount=bean.getMessageGoodCount();
							int poorcount = bean.getMessagePoorCount();
							
							if(readcount>10){
							
					%>
		
														<div class="post-img">
															<a href="single.html"><img src="images/bus2.jpg"
																alt=""></a>
														</div>
														<div class="post-text">
															<a class="pp-title" href="boardDetail.jsp"> <%=subject %></a>
															<p>
															
															<span class="glyphicon glyphicon-time"></span><%=postdate%>	
															<span>조회수 : <%=readcount%></span>
										
										<a class="span_link1" href="javascript:comment('<%=num%>')">
										 <span class="glyphicon glyphicon-comment"></span> 0</a>
											
										<a class="span_link1" href="javascript:">
										 <span class="glyphicon glyphicon-heart-empty"></span> <%=goodcount %></a>
										<a class="span_link1" href="javascript:">
										 <span class="glyphicon glyphicon-thumbs-down"></span> <%=poorcount %></a>
															</p>
															
															<p>
																<%=content %>
															</p>
														</div>
														
 		
														
														<div class="clearfix"></div>
														<hr style="width:200px;">
														<%}}//for%>
				 <%
 			//if
 		%>
													
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
													
													
					<%
						  for (int i = 0;i<21; i++) {
							if (i == listSize) break;
							BoardBean bean = vlist.get(i);
							int num = bean.getMessageID();
							BoardBean beanContent = bMgr.getBoard(num);//게시물 가져오기
							String name = bean.getMemberEmail();
							String subject = bean.getMessageTitle();
							String postdate = bean.getMessagePostDate();
							String content=beanContent.getMessageContent();
							
							int readcount = bean.getMessageClick();
							int goodcount=bean.getMessageGoodCount();
							int poorcount = bean.getMessagePoorCount();
							
							
							
					%>
													
													<div class="post-img">
															<a href="single.html"><img src="images/bus2.jpg"
																alt=""></a>
														</div>
														<div class="post-text">
															<a class="pp-title" href="boardDetail.jsp"> <%=subject %></a>
															<p>
															
															<span class="glyphicon glyphicon-time"></span><%=postdate%>	
															<span>조회수 : <%=readcount%></span>
										
										<a class="span_link1" href="javascript:comment('<%=num%>')">
										 <span class="glyphicon glyphicon-comment"></span> 0</a>
											
										<a class="span_link1" href="javascript:">
										 <span class="glyphicon glyphicon-heart-empty"></span> <%=goodcount %></a>
										<a class="span_link1" href="javascript:">
										 <span class="glyphicon glyphicon-thumbs-down"></span> <%=poorcount %></a>
															</p>
															
															<p>
																<%=content %>
															</p>
														</div>
														
 		
														
														<div class="clearfix"></div>
														<hr style="width:200px;">
														<%}}//for%>
													</div>
												
												</div>
											</div>
										</div>
									</div>
								</div>
							
	 <%
 		
 		%>
								
							</section>
						</div> 

					</div>
				<!-- 	<div class="side-bar-articles">
						<div class="side-bar-article">
							<a href="single.html"></a>

						</div>
						<div class="side-bar-article">
							<a href="single.html"></a>

						</div>
						<div class="side-bar-article">
							<a href="single.html"></a>

						</div>
					</div> -->
				</div>
				
				
				
				
				
				
				
				<div class="secound_half"></div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
<%@include file="mainFooter.jsp" %>
	
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
	
	
	<form name="listFrm" method="post">
		<input type="hidden" name="reload" value="true"> 
		<input type="hidden" name="nowPage" value="1">
	</form>
	<form name="readFrm" method="get">
		<input type="hidden" name="num" > 
		<input type="hidden" name="nowPage" value="<%=nowPage%>"> 
		<input type="hidden" name="keyField" value="<%=keyField%>"> 
		<input type="hidden" name="keyWord" value="<%=keyWord%>">
	</form>
	
</body>
</html>