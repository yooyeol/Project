<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	    <%@page import="java.sql.*"%>

<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>

<!--  daum.header.start -->
<meta charset="utf-8">
    <title>내정보 관리 </title>
      <meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <link rel="stylesheet" type="text/css" href="content/change.css">   
<%@include file="daum.jsp"%>
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

<!--  daum.header.end -->

</head>



<body>





	<!-- header-section-starts-here -->
	<%@include file="mainHeader.jsp" %>
	
	
	
	
	
	
	
	<!-- content-section-starts-here -->
	<div class="main-body">
		<div class="wrap">

			<div class="col-md-8 content-left">

				<div id="daumWrap" class="">
					<div id="daumIndex">
						<!-- 웹접근성용 바로가기 링크 모음 -->
						<a href="#daumBody">본문 바로가기</a> <a href="#daumGnb">메뉴 바로가기</a>
					</div>



					<hr class="hide">
					<div id="daumContent" role="main">
						<div id="cMain">
							<div id="mArticle">
								<h2 id="daumBody" class="screen_out">비밀번호 변경 본문</h2>

								<div class="myinfo_intro intro_modifypw">
									<span class="bg_intro"></span>

									<div class="cont_intro">
										<h3 class="tit_comm tit_modifypw">주기적인(6개월) 비밀번호 변경을 통해
											개인정보를 안전하게 보호하세요.</h3>
									</div>
								</div>


								<form id="changePasswordForm" action="updatePw.jsp"
									method="post">

									<fieldset class="fld_comm">
										<legend class="screen_out">비밀번호 재확인 입력 폼</legend>
										<div class="info_comm info_modifypw">


											<div class="info_detail">
												<div class="tit_detail">
													<strong class="txt_comm txt_pwnew">새 비밀번호</strong>
												</div>
												<div class="input_info">
													<div class="bg_user bg_basic" id="passwordDiv">
														<label for="newPassword" class="lab_g">새 비밀번호를 입력해
															주세요.</label> <input type="password" id="newPassword"
															name="newPassword" class="tf_g" value=""> <input
															type="text" title="입력한 비밀번호 보기" id="textPwNew"
															name="textNewPassword" style="display: none" class="tf_g">
														<button type="button" id="passwordShow"
															class="btn_comm btn_view">
															<span class="screen_out">입력한 비밀번호 보기</span>
														</button>

													</div>
													<p class="desc_add emph_notice" style="display: none"></p>
												</div>
											</div>

											<div class="info_detail info_break">
												<div class="info_rule">
													<strong class="screen_out">새 비밀번호 TIP 리스트</strong> <em
														class="ico_comm ico_tip">TIP</em>

													<div class="info_tip">
														<ul class="screen_out">
															<li>비밀번호는 8~32자의 영문 대/소문자, 숫자, 특수문자를 조합하여 사용하실 수
																있어요!</li>
															<li>쉬운 비밀번호나 자주 쓰는 사이트의 비밀번호가 같을 경우,도용되기 쉬워
																주기적으로변경하여 사용하는 것이 좋습니다.</li>
															<li>비밀번호에 특수문자를 추가하여 사용하시면 기억하기도 쉽고, 비밀번호 안전도가 높아져
																도용의 위험이 줄어듭니다.</li>
														</ul>
													</div>
												</div>

											</div>

										</div>

										<div class="wrap_btn">

											<button type="submit" class="btn_comm btn_save">
												<span class="screen_out">저장</span>
											</button>
										</div>

									</fieldset>
									<input type="hidden" id="PAGEID" name="PAGEID" value="">
								</form>

							</div>
							<!--// mArticle -->
						</div>
						<!-- // cMain -->
					</div>
					<!-- // daumContent -->
					<hr class="hide">
					<!-- // daumFoot -->


				</div>

				
				<script src="https://go.daum.net/jsa_minidaum_pc.daum"
					charset="utf-8" type="text/javascript"></script>
				<script type="text/javascript"
					src="https://s1.daumcdn.net/svc/original/U03/cssjs/jquery/jquery-1.10.2.min.js"></script>
				<div id="sesssionResetLayer" style="display: none">
					<div class="dimmed_layer"></div>
					<div class="userinfo_layer"
						style="margin-left: -188px; top: 280px;">
						<!-- 임시스타일 -->
						<div class="inner_logout_layer">
							<div class="layer_head">
								<strong class="screen_out">로그아웃 레이어</strong>
							</div>
							<div class="layer_body">
								<div class="info_logout">
									<strong class="tit_layer">로그인 되어 있는 다른 기기를<br>모두
										<span class="emph_txt">로그아웃</span> 할까요?
									</strong>
									<p class="txt_layer">
										비밀번호를 변경한 후 기존 비밀번호로 로그인 되어 있던 <br>다른 기기와 브러우저를 모두
										로그아웃하거나 <br>새로운 비밀번호로 로그인 상태를 유지할 수 있습니다.
									</p>
									<div class="btn_process">
										<button type="button" class="btn_comm btn_logout">
											<span class="screen_out">모두 로그아웃</span>
										</button>
										<button type="button" class="btn_comm btn_keep">
											<span class="screen_out">로그인 상태 유지</span>
										</button>
									</div>
								</div>
								<div class="info_notice">
									<em>모두 로그아웃이란?</em>현재 브라우저를 제외한 다른 기기의 모든 로그인 상태가 해제되어 로그아웃됩니다.
									변경된 비밀번호로 다시 로그인 하여야 합니다. <em>로그인 상태 유지란?</em>비밀번호 변경 후에도 다른
									기기의 로그인 상태가 유지됩니다. 로그아웃 후에는 변경된 비밀번호로 다시 로그인 하실 수 있습니다.
								</div>
							</div>
						</div>
					</div>
				</div>
				
				
				
		<!--  daum.footer.start -->		
				
				
				<script type="text/javascript">
					var _tiq = 'undefined' !== typeof _tiq ? _tiq : []; // Global Variables
				</script>
				<script type="text/javascript">
					var minidaum_options = {
						bgType : "white",
						enableLogoutRetun : false,
						returnUrl : '',
						disableHotissue : false,
						disableLogo : false,
						disableTracker : false,
						enableShield : false
					}
				</script>
				
				
				
				
				
				<script type="text/javascript" src="content/jquery.form.validate.js"></script>
				<script type="text/javascript"
					src="content/jquery.form.member.init.js"></script>
				<script type="text/javascript" src="content/jquery.api.js"></script>
				<script type="text/javascript" src="content/messages.js"></script>
				<script type="text/javascript">
				$(document).ready(function () {
				    
			    	var validator = $("#changePasswordForm").validate({
						rules: {
			                password: {
			                    required: true
			                },
			                newPassword: {
			                    required : true,
			                    minlength : 8,
			                    maxlength : 32,
			                    whitespace : true,
			                    isasciiprintable : true,
			                    onlydigits : true,
			                    consecutive : true
			                }
			            },
			            messages: {
			                password: {
			                    required: "비밀번호를 입력해 주세요."
			                },
			                newPassword: {
			                    required : "비밀번호를 입력해 주세요.",
			                    minlength : "조금 더! 비밀번호는 8자 이상이에요!",
			                    maxlength : "비밀번호는 32자까지 사용할 수 있어요!",
			                    whitespace : "비밀번호에 공백(space)을 넣을 수 없어요!",
			                    isasciiprintable : "영문자,숫자,특수문자만 비밀번호에 입력해 주세요!",
			                    onlydigits : "숫자만 있는 비밀번호는 사용할 수 없어요!",
			                    consecutive : "유추하기 쉬운 비밀번호는 사용할 수 없어요!"
			                }
			            }
			        });
			        
			        var form = $("#changePasswordForm").getForm({getElementForShowError: function(element) {return element.parent()}, messageInfoClass: "txt_pass"});
			        
			        form.initWebRow('.info_detail');
			        form.bindPasswordEvent('newPassword');
			        form.bindPasswordEvent('password');
			                        
			        $('#passwordShow').mousedown(function(){
			            $("#newPassword").hide();
			            $("#textPwNew").show();
			        }).mouseup(function(){
			            $("#textPwNew").hide();
			            $("#newPassword").show();
			        }).mouseleave(function(){
			            $("#textPwNew").hide();
			            $("#newPassword").show();
			        });

			        $('#passwordShow').keypress(function(event) {
			            if(event.which == 32) {
			                if($("#newPassword").is(":visible")) {
			                    $("#newPassword").hide();
			                    $("#textPwNew").show();
			                }
			            }
			        }).keyup(function(event){
			            if(event.which == 32) {
			                if($("#textPwNew").is(":visible")) {
			                    $("#textPwNew").hide();
			                    $("#newPassword").show();
			                }
			            }
			        });

			        $('#oldPasswordShow').mousedown(function(){
			            $("#password").hide();
			            $("#textPassword").show();
			        }).mouseup(function(){
			            $("#textPassword").hide();
			            $("#password").show();
			        }).mouseleave(function(){
			            $("#textPassword").hide();
			            $("#password").show();
			        });

			        $('#oldPasswordShow').keypress(function(event) {
			            if(event.which == 32) {
			                if($("#password").is(":visible")) {
			                    $("#password").hide();
			                    $("#textPassword").show();
			                }
			            }
			        }).keyup(function(event){
			            if(event.which == 32) {
			                if($("#textPassword").is(":visible")) {
			                    $("#textPassword").hide();
			                    $("#password").show();
			                }
			            }
			        });
					
			        $('#oldPasswordShow').focusout(function() {
			        	  $("#password").show();
			              $("#textPassword").hide();
			        });
			        
			        $('#passwordShow').focusout(function() {
			        	 $("#textPwNew").hide();
			             $("#newPassword").show();
			      });
			        
			       
			        
					var submitted = false;
			        $("#changePasswordForm").on("submit", function(){
			        	if(!submitted) {
			      			submitted = true;
			                return true;
			            }
			            return false;
			        });
					
			        $("#newPassword, #textNewPassword").keyup(function(event) {
			            var errorList = validator.getElementErrorList(this);
			            if(errorList.length > 0) {
			                form.showError(errorList[0].element.id, errorList[0].message);
			            } else { 
			                var message = "안전한 비밀번호입니다. 바로 사용하세요!";
			                var password = $(this).val();
			                if(form.isStrongPassword(password)) {
			                    message = "완벽한 비밀번호입니다. 바로 사용하세요!";
			                }
			                form.showInfo(this.id, message);
			                if(event.which == 13) {
			                	$(".btn_save").click()
			                }
			            }
			        });
			        
			        $("#password, #textPassword").keyup(function(event) {
						if(event.which == 13) {
							$(".btn_save").click();
						}
			        });
			        
			        $(".btn_save").on("click",function () {
			        	var errorList = validator.getFormErrorList();
			            if(errorList.length != 0) {
			                for(var i=0; errorList[i]; i++) {
			                    var error = errorList[i];
			                    form.showError(error.element.id, error.message);
			                }
			                errorList[0].element.focus();
			                submitted = false;
			                return false;
			            }
			            checkPassword();
			        });
			        
			        var checkPassword = function(){
			        	var that = this;
			        	var param = {
			        		PAGEID: $("#PAGEID").val(),
			                password: $("#password").val(),
			                newPassword: $("#newPassword").val()
			            };
			        	$.when($.api.call("checkChangePassword", param)).then(function(data) {
			        		if(data.message == 'NOT_VALID') {
			        			form.resetForm('.info_detail');
			        			$.each(data.result, function(i,item) {
			        				$("#" + item.field).val("");
			        				that.form.showError(item.field, item.defaultMessage);
			    				});	
			        		} else if(data.message == 'OK'){
			        			$("#sesssionResetLayer").show();
			        			$('.btn_logout').focus();
			        		}
			            }, function(data) {
			                location.reload(true);
			            });
			        };
			        
			        $(".btn_logout").on("click",function () {
			        	var input = $("<input>")
			            	.attr("type", "hidden")
			            	.attr("name", "sessionRemove").val("Y");
			    		$('#changePasswordForm').append($(input));
			    		$('#changePasswordForm').submit();
			        });
			        
			        $(".btn_keep").on("click",function () {
			        	var input = $("<input>")
			            	.attr("type", "hidden")
			            	.attr("name", "sessionRemove").val("N");
			        	
			    		$('#changePasswordForm').append($(input));
			    		$('#changePasswordForm').submit();
			        });
			        
			        
			    	$('body').keyup(function(e) {
			            var code = e.keyCode || e.which;
			            
			            if (code == '9') {
			            	if($('#sesssionResetLayer').is(":visible")){
			            		if(!$('.btn_logout, .btn_keep').is(":focus")) {
			            			$('.btn_logout').focus();
			            		}
			            	}
			            }
			         });
			    });
				</script>










				<div class="sports-top">
					<div class="s-grid-left"></div>
					<div class="s-grid-right"></div>

				</div>
			</div>


			<div class="clearfix"></div>
		</div>
	</div>
	<!-- content-section-ends-here -->
	<!-- footer-section-starts-here -->
	<%@include file="mainFooter.jsp" %>
	<!-- footer-section-ends-here -->



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
			$().UItoTop({
				easingType : 'easeOutQuart'
			});
		});
	</script>
	<a href="#to-top" id="toTop" style="display: none;"><span
		id="toTopHover"></span><span id="toTopHover"></span><span
		id="toTopHover"></span> <span id="toTopHover" style="opacity: 1;">
	</span></a>
	<!---->

	<a href="#" id="toTop">To Top</a>
	<a href="#" id="toTop">To Top</a>
	<a href="#" id="toTop">To Top</a>
</body>
</html>