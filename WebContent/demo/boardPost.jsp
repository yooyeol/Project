<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="UTF-8">
		<title>요기조기 게시물작성하기</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href="../demo/css/bootstrap.css" rel='stylesheet' type='text/css' />
		<link href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css' rel='styleseet' type'text/css'>
  
  
	<!-- 	<link href="../cssFB/bootstrap.min.css" rel="stylesheet">
		 --><!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<!-- <link href="../cssFB/styles.css" rel="stylesheet">
 -->
		   
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
	
	<!-- <script type="text/javascript">
var test;
var index;
$(document).ready(function(){
	test = $("#blah")
});

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                	index=0;
                	 $("#textArea").append('<img id="blah" src="readURL(this);" alt="your image" />');
                    $('#blah').attr('src', e.target.result);
                   
                    index++;
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
</script>
	 -->
		
	</head>
	<body>

           <%@include file="mainHeader.jsp" %>
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
                                   
                                   
                                       <div class="btn-group" role="group" aria-label="...">
                                       
  										<button type="button" class="btn btn-default">
  											<span class="glyphicon glyphicon-map-marker" aria-hidden="true" name="TourCourseID"></span> 경로등록
  										</button>
 									<!-- 	<button type="button" class="btn btn-default" name="filename" size="50" maxlength="50" onchange="readURL(this);">
 											 <span class="glyphicon glyphicon-camera" aria-hidden="true"></span> 사진업로드
 										</button> -->
									</div>
									
									
									


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