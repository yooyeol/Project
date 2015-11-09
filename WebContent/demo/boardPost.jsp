<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=EUC-KR">
		<meta charset="EUC-KR">
		<title>Faceboot - A Facebook style template for Bootstrap</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href="../cssFB/bootstrap.min.css" rel="stylesheet">
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link href="../cssFB/styles.css" rel="stylesheet">

		   
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

           
            <!-- main right col -->
            <div class="column col-sm-10 col-xs-11" id="main">
                
                
              
                <div class="padding">
                  
                      
                        <!-- content -->                      
                      	<div class="row">
                          
                         <!-- main col left --> 
                         
                              <div class="well"> 
                                   <form class="form-horizontal" role="form" name="postFrm" method="post" action="boardInputProc.jsp" enctype="multipart/form-data">
                                    <h3><bold>What's New</h3></br>
                                     <div class="form-group" style="padding-left: 14px;padding-bottom:0;">
									<input style="padding:10px;"type="text" name="subject" size="50" maxlength="30" placeholder="subject">
                                    </div>
                                     <div class="form-group" style="padding:14px;  border:1px; color: grey;">
                                     <span>���� �ø���</span>
                                      <div id="showfile"  name="img_1">
                                      <img src="" width="200" height="200" id="img" style="display: none;"></div>
                                      <input id="imagefile" type="file" multiple="multiple" value="�̹���.1" name="filename"/>
                                      
                                    </div>
                                    <div class="form-group" style="padding:14px;">
                                      <textarea id="textArea" class="form-control"  name="content"> </textarea> 
                                    </div>
                                    
                                    
                                    <button style="margin: 5px;" class="btn btn-primary pull-right" type="submit">Post</button>
                                    <button style="margin: 5px;"class="btn btn-primary pull-right" type="reset">�ٽþ���</button>
                                    <button style="margin: 5px;"class="btn btn-primary pull-right" type="button" onclick="javascript:location.href='board.jsp'">��Ϻ���</button>
                                    
                                       <div class="btn-group" role="group" aria-label="...">
  										<button type="button" class="btn btn-default">
  											<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> ��ε��
  										</button>
 										<button type="button" class="btn btn-default" name="filename" size="50" maxlength="50" onchange="readURL(this);">
 											 <span class="glyphicon glyphicon-camera" aria-hidden="true"></span> �������ε�
 										</button>
									</div>
									
									
									


 <div class="form-group" style="padding:14px;">
                                      <input class="form-control"  placeholder="Update your route" name="mymap"></input>
                                 		
                                 		<div style="float: right;" class="col-sm-5">
  
  					<span style="font-weight: bold; ">��õ ��� ���� </span>
  
    					<label class="radio-inline">
      							<input type="radio" name="star" value="5" >5��
    					</label>
    					<label class="radio-inline">
     							 <input type="radio" name="star" value="4">4��
   						 </label>
   						 <label class="radio-inline">
     							 <input type="radio" name="star" value="3">3��
   						 </label>
 						<label class="radio-inline">
     							 <input type="radio" name="star" value="2">2��
    					</label>
     					<label class="radio-inline">
    							  <input type="radio" name="star" value="1">1��
    					</label>
</div>
</div>
                        

					
									<input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>">
                                  </form>
                              </div>
                     
                    
                      
                  
                      
                   
                        
                     
                </div><!-- /padding -->
            </div>
            <!-- /main -->
          
    





	<!-- script references -->
		<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<!-- <script src="js/scripts.js"></script> -->
	</body>
</html>