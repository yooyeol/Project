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
  <link rel="stylesheet" type="text/css" href="content/my.css">   
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
	<%@include file="mainHeader.jsp"%>





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
								<div class="dimmed_layer" style="display: none"></div>
								<h2 id="daumBody" class="screen_out">회원탈퇴 안내동의 본문</h2>
								<div class="myinfo_intro intro_out">
									<span class="bg_intro"></span>
									<div class="cont_intro">
										<h3 class="tit_comm tit_outagree">회원탈퇴에 앞서 유의사항 및 안내를 반드시
											읽고 진행해 주세요!</h3>
									</div>
								</div>
								<form id="out" action="out.jsp?action=agree-check" method="post">

									<div class="info_agree">

										<div class="info_user">
											<strong class="tit_agree">아이디 재사용 및 복구 불가 안내</strong> <span
												class="txt_agree">회원탈퇴 진행 시 본인을 포함한 타인 모두 <em
												class="emph_g">아이디 재사용이나 복구가 불가능합니다.</em><br> 신중히 선택하신
												후 결정해주세요.
											</span> <span class="check_notice"> <input type="checkbox"
												id="idAgree" name="idAgree" class="tf_check"> <label
												for="idAgree" class="lab_check"> <span
													class="ico_comm ico_check"></span> 동의
											</label>
											</span>
										</div>

										<div class="info_user">
											<strong class="tit_agree">내정보 및 개인형 서비스 이용 기록 삭제 안내</strong>
											<span class="txt_agree">내정보 및 개인형 서비스 이용기록이 모두 삭제되며,<em
												class="emph_g">삭제된 데이터는 복구되지 않습니다.</em><br>삭제되는 서비스를
												확인하시고, 필요한 데이터는 미리 백업을 해주세요.
											</span>
											<dl class="list_agree">
												<dt class="tit_service">
													<a href="http://mail.daum.net" class="link_service">메일</a>
												</dt>
												<dd class="txt_service">메일 계정 및 보관중인 메일 삭제</dd>
												<dt class="tit_service">
													<a href="http://blog.daum.net/" class="link_service">블로그</a>
												</dt>
												<dd class="txt_service">블로그 계정 및 포스팅 게시글 삭제</dd>
												<dt class="tit_service">
													<a href="http://cloud.daum.net/" class="link_service">클라우드</a>
												</dt>
												<dd class="txt_service">저장된 파일 삭제 (탈퇴 전 파일 백업 가능)</dd>
												<dt class="tit_service">
													<a href="http://addrbook.daum.net/" class="link_service">주소록</a>
												</dt>
												<dd class="txt_service">저장된 주소 삭제 및 주소 업데이트 중단</dd>
												<dt class="tit_service">
													<a href="http://code.daum.net/web/" class="link_service">코드</a>
												</dt>
												<dd class="txt_service">생성한 QR코드 삭제</dd>
												<dt class="tit_service">이용권</dt>
												<dd class="txt_service lst">만화 등 이용권 정보 삭제</dd>
												<dt class="tit_service">게임</dt>
												<dd class="txt_service lst">게임 정보(캐릭터, 아이템, 유료 콘텐츠 등)
													삭제</dd>
											</dl>
											<span class="check_notice"> <input type="checkbox"
												id="serviceAgree" name="serviceAgree" class="tf_check">
												<label for="serviceAgree" class="lab_check"> <span
													class="ico_comm ico_check"></span> 동의
											</label>
											</span>
										</div>

										<div class="info_user">
											<strong class="tit_agree">게시판형 서비스에 등록한 게시글 삭제 불가 안내</strong>
											<span class="txt_agree">삭제를 원하는 게시글이 있다면 반드시 회원탈퇴 전
												비공개 처리하거나 삭제하시기 바랍니다.<br>탈퇴 후에는 회원정보가 삭제되어 본인 여부를 확인할 수
												있는 방법이 없어, <em class="emph_g">게시글을 임의로 삭제해드릴 수 없습니다.</em>
											</span>
											<dl class="list_agree">
												<dt class="tit_service">
													<a href="http://tip.daum.net/" class="link_service">TIP</a>
												</dt>
												<dd class="txt_service">나의 질문 및 답변, 내가 남긴 의견 등</dd>
												<dt class="tit_service">
													<a href="http://cafe.daum.net/" class="link_service">카페</a>
												</dt>
												<dd class="txt_service">게시물 및 댓글</dd>
												<dt class="tit_service">
													<a href="http://media.daum.net/" class="link_service">뉴스</a>
												</dt>
												<dd class="txt_service">뉴스 게시물 및 의견</dd>
												<dt class="tit_service">기타</dt>
												<dd class="txt_service">공적인 영역의 게시물과 댓글, 의견 등</dd>
											</dl>
											<span class="check_notice"> <input type="checkbox"
												id="boardAgree" name="boardAgree" class="tf_check">
												<label for="boardAgree" class="lab_check"> <span
													class="ico_comm ico_check"></span> 동의
											</label>
											</span>
										</div>
									</div>
									<div class="wrap_btn">
										<button class="btn_comm btn_confirm" type="submit">
											<span class="screen_out">탈퇴</span>
										</button>
									</div>
									</form>

									<!-- 회원탈퇴_안내동의 팝업 -->
									<div id="wrongLayer" class="userinfo_layer"
										style="top: 300px; margin-left: -188px; display: none;">
										<div class="inner_myinfo_layer">
											<div class="layer_head">
												<strong class="screen_out">회원탈퇴 안내동의 레이어</strong>
											</div>
											<div class="layer_body">
												<strong class="tit_layer">안내사항을 확인하신 후, 동의해 주세요.</strong>
												<div class="btn_process">
													<button type="button" class="btn_comm btn_ok">
														<span class="screen_out">확인</span>
													</button>
												</div>
											</div>
											<div class="layer_foot">
												<button type="button" class="btn_comm btn_close">닫기</button>
											</div>
										</div>
									</div>
							</div>
							<!--// mArticle -->
						</div>
						<!-- // cMain -->
					</div>
					<!-- // daumContent -->
					<hr class="hide">
					<!-- // daumFoot -->

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

				<script src="https://go.daum.net/jsa_minidaum_pc.daum"
					charset="utf-8" type="text/javascript"></script>
				<script type="text/javascript"
					src="https://s1.daumcdn.net/svc/original/U03/cssjs/jquery/jquery-1.10.2.min.js"></script>

				<script type="text/javascript"
					src="content/jquery.form.member.init.js"></script>
				<script type="text/javascript" src="content/jquery.form.validate.js"></script>


				<script type="text/javascript">
					$(document).ready(function() {

						var validator = $("#out").validate({
							rules : {
								idAgree : "required",
								serviceAgree : "required",
								boardAgree : "required"
							},
							messages : {
								idAgree : "안내사항을 확인하신 후, 동의해 주세요.",
								serviceAgree : "안내사항을 확인하신 후, 동의해 주세요.",
								boardAgree : "안내사항을 확인하신 후, 동의해 주세요."
							}
						});

						var form = $("#out").getForm();
						form.bindCheckBoxEvent();

						var submitted = false;
						$("#out").submit(function() {
							if (!submitted) {
								submitted = true;
								var errorList = validator.getFormErrorList();
								if (errorList.length !== 0) {
									var errorMsg = "";
									for (var i = 0; errorList[i]; i++) {
										errorMsg = errorList[i].message;
									}
									form.showLayer("wrongLayer", errorMsg);
									submitted = false;
									return false;
								}
								return true;
							}
							return false;
						});

						$(".btn_close, .btn_ok, .btn_numnot").click(function() {
							form.hideAllLayer();
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
	<%@include file="mainFooter.jsp"%>
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