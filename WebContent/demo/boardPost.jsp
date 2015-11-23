<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
	<head>
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<title>요기조기 게시물작성하기</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<!-- <link href="../demo/css/bootstrap.css" rel='stylesheet' type='text/css' /> -->
		
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
	
	
		
		
  
		   
		<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
       $( document ).ready(function() {
            $("#imagefile").change(function ()
              {
                     $("#img").show();
                     $("#img").attr("src",'http://blog.teamtreehouse.com/wp-content/uploads/2015/05/InternetSlowdown_Day.gif');
                     if (typeof(FileReader)!="undefined"){
                       
                         var regex = /^([a-zA-Z0-9\s_\\.\-:])+(.jpg|.jpeg|.gif|.png)$/;
                         $($(this)[0].files).each(function () {
                             var getfile = $(this);
                             if (regex.test(getfile[0].name.toLowerCase())) {
                                 var reader = new FileReader();
                                 reader.onload = function (e) {
                                     $("#img").attr("src",e.target.result);
                                 }
                                 reader.readAsDataURL(getfile[0]);
                             } else {
                                 alert(getfile[0].name + " is not image file.");
                                 return false;
                             }
                         });
                     }
                     else {
                         alert("Browser does not supportFileReader.");
                     }
            });
        });
    </script>
	
	
		
	</head>
	<body>

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
            <!-- main right col -->
          <div class="main-body">
		<div class="wrap">
          
            <div class="col-md-12" >
           
                         
                                  <div class="well" style="padding-bottom: 50px;"> 
                                   <form class="form-horizontal" role="form" name="postFrm" method="post" action="boardPostProc.jsp" enctype="multipart/form-data">
                                    <h3><bold>What's New</h3></br>
                                     <div class="form-group" style="padding-left: 14px;padding-bottom:0;">
									<input style="padding:10px;"type="text" name="MessageTitle" size="50" maxlength="30" placeholder="subject">
                                    </div>
                                     <div class="form-group" style="padding:14px;  border:1px; color: grey;">
                                     <span>사진 올리기</span>
                                      <div id="showfile"  name="img_1">
                                      <img src="" width="200" height="200" id="img" style="display: none;"></div>
                                      <input id="imagefile" type="file" multiple="multiple" value="이미지.1" name="filename"/>
                                      
                                    </div>
                                    <div class="form-group" style="padding:14px;">
                                      <textarea id="textArea" class="form-control"  name="MessageContent" style="height: 600px;"> </textarea> 
                                    </div>
                                    
                                    <div class="form-group" style="padding:14px;">
                                    <select name="courseDate" onchange="showCourse(this.value)">
                                    <option value="">경로선택하기</option>
                                   <option value="<%=session.getAttribute("memberIdKey")%>">여행경로 보기</option> 
                                    </select>
                                    <div id="txtHint">여행 경로를 골라 주세요..</div>
                                    </div>
                                   <script >
                                   function showCourse(str){
                                	   var xhttp;
                                	   if(str==""){
                                		   document.getElementById("txtHint").innerHTML="";
                                		   return;
                                	   }
                                	   
                                	   xhttp=new XMLHttpRequest();
                                	   xhttp.onreadystatechange=function(){
                                		   if(xhttp.readyState==4&&xhttp.status==200){
                                			   document.getElementById("txtHint").innerHTML=xhttp.responseText;
                                		   }
                                	   };
                                	   xhttp.open("GET", "getTourCourse.jsp?MemberID="+str,true);
                                	   xhttp.send();
                                   }
                                   
                                   </script>
                                   
                                   
                                 
									
									


 				<div class="form-group" style="padding:14px;">
                                      <input class="form-control"  placeholder="Update your route" name="TourCourseID"></input>
                                 		
                         <div style="float: right;" class="col-sm-5">
  
  								<span style="font-weight: bold; ">추천 경로 평점 </span>
  
    								<label class="radio-inline">
      									<input type="radio" name="MessageSiteGrade" value="5" >5점
    								</label>
    								<label class="radio-inline">
     							 		<input type="radio" name="MessageSiteGrade" value="4">4점
   						 			</label>
   						 			<label class="radio-inline">
     									 <input type="radio" name="MessageSiteGrade" value="3">3점
   						 			</label>
 									<label class="radio-inline">
     							 		<input type="radio" name="MessageSiteGrade" value="2">2점
    								</label>
     								<label class="radio-inline">
    							  		<input type="radio" name="MessageSiteGrade" value="1">1점
    								</label>
						</div>
				</div>
                        
 
                                    <button style="margin: 5px;" class="btn btn-primary pull-right" type="submit">Post</button>
                                    <button style="margin: 5px;"class="btn btn-primary pull-right" type="reset">다시쓰기</button>
                                    <button style="margin: 5px;"class="btn btn-primary pull-right" type="button" onclick="javascript:location.href='board.jsp'">목록보기</button>
                                    
					
									<input type="hidden" name="MemberEmail" value="<%=session.getAttribute("idKey")%>">
									<input type="hidden" name="MemberID" value="<%=session.getAttribute("memberIdKey")%>">
									
                                  </form>
                              </div>
                     
         
         
          
    
</div>
	<div class="clearfix"></div>
</div>
 <%@include file="mainFooter.jsp" %>
	</body>
</html>