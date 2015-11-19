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
<jsp:include page="mainHeader.jsp"></jsp:include>

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