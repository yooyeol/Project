<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="ko" hola_ext_inject="disabled"><head>
    <meta charset="utf-8">
    <title>회원탈퇴 | Daum 내정보</title>
      <meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <link rel="stylesheet" type="text/css" href="content/my.css"> 
<script charset="utf-8" type="text/javascript" src="https://s1.daumcdn.net/svc/original/U03/cssjs/minidaum/pc/minidaum-a.white.min.js"></script><style>/* minidaum common */
#wrapMinidaum {z-index:999999;height:34px;font-size:12px;line-height:1.5;color:#333;text-align:left}
#minidaum ol, #minidaum ul, #minidaum li {list-style:none}
#minidaum img, #minidaum fieldset {border:0;padding:0}
#minidaum img {vertical-align:top}
#minidaum p {margin:0;padding:0}
#minidaum a {font-family:"돋움",dotum,sans-serif;text-decoration:none}
#minidaum a:active, #minidaum a:hover {text-decoration:underline}
#wrapMinidaum .screen_out {display:block;overflow:hidden;position:absolute;left:-9999px;width:1px;height:1px;font-size:0;line-height:0;text-indent:-9999px}
#minidaum {position:absolute;top:0;left:0;width:100%;height:34px;letter-spacing:-1px}
#minidaum #minidaumStart {float:left;line-height:17px;margin:7px 17px 0 0;color:#818388}
#minidaum #minidaumStart.show {display:block}
.minidaum_gnb {float:right;margin-top:6px;line-height:15px}
*:first-child+html .minidaum_gnb {line-height:14px}
#minidaumUser {position:relative;float:left;margin-right:2px}
#minidaum .minidaum_login #btnMinidaumLogin {display:none}
#minidaumUserLayer {display:none;position:absolute;top:18px;right:9px;width:80px;font-size:12px;background:#fff none;border:1px solid #444}
#minidaumUserLayer.minidaumUserLayer_open {display:block;overflow:hidden;z-index:999999}
#minidaumUserLayer a {font-size:12px;color:#333}
#minidaumUserLayer .minidaum_logout {height:19px;padding-top:5px;padding-left:10px;background:#f4f5f7 none}
#minidaumUserLayer .minidaum_logout a {font-weight:bold}
#minidaumUserLayer .minidaum_mylayer {padding:7px 0 7px 10px;border-top:1px solid #f1f2f4;letter-spacing:0}
#minidaumUserLayer .minidaum_mylayer li {height:19px;line-height:19px}
#minidaumUserLayer .minidaum_myinfo li {height:18px;line-height:18px}
#minidaumUserLayer .minidaum_myinfo a {color:#777}
#minidaumService {float:left;padding-top:4px}
#minidaumService .minidaum_top_link {padding-right:1px}
.minidaum_service_list {float:left}
.minidaum_service_list .minidaum_news {padding-right:9px}
.minidaum_service_list .minidaum_shopping {padding-right:8px}
.minidaum_service_list .minidaum_new{display:inline-block;overflow:hidden;width:11px;height:12px;margin-left:3px;background:url(https://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat -160px -270px;text-indent:-3000px;vertical-align:bottom}
.minidaum_service_list .minidaum_count * {margin-top:0}
#minidaumMoreLayer {display:none;position:absolute;top:27px;right:0;overflow:hidden;width:449px;height:223px;font-size:12px;background:#fff none;border:1px solid #444;letter-spacing:0}
#minidaumMoreLayer.minidaumMoreLayer_open {display:block;z-index:999999}
#minidaumMoreLayer .minidaum_idx {overflow:hidden;position:absolute;top:16px;width:36px;height:13px;text-indent:-9999px}
#minidaumMoreLayer .minidaum_idx1 {left:22px;background:url(https://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat 0 -40px}
#minidaumMoreLayer .minidaum_idx2 {left:104px;background:url(https://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat -40px -40px}
#minidaumMoreLayer .minidaum_idx3 {left:194px;background:url(https://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat -80px -40px}
#minidaumMoreLayer .minidaum_idx4 {left:284px;background:url(https://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat -120px -40px}
#minidaumMoreLayer .minidaum_idx5 {left:374px;background:url(https://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat -160px -40px}
#minidaumMoreLayer .minidaum_list_group {float:left;width:89px;height:176px;margin-top:16px;padding-top:20px;border-left:1px solid #ebeef2}
#minidaumMoreLayer .minidaum_list_group li {float:left;overflow:hidden;width:100%;height:22px;line-height:23px;text-indent:13px}
#minidaumMoreLayer .minidaum_list_group1 li {float:left;overflow:hidden;width:100%;height:22px;line-height:23px;text-indent:21px}
#minidaumMoreLayer .minidaum_list_group li a {font-size:12px;color:#333;white-space:nowrap}
#minidaumMoreLayer .minidaum_list_group .last {height:18px}
#minidaumMoreLayer .minidaum_list_group1 {width:89px;border:none}
#minidaumMoreLayer .minidaum_list_group5 {width:86px}
#minidaumMoreLayer .minidaum_list_group .minidaum_all a {padding-right:7px;color:#5279b4;background:url(https://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat 100% -147px;text-decoration:underline;letter-spacing:-1px}
#minidaumMoreLayer.minidaum_custom .minidaum_idx {top:49px}
#minidaum .minidaum_custom {height:258px}
#minidaum .minidaum_custom .minidaum_list_group {margin-top:49px}
#minidaumMoreLayer .minidaum_more_custom {position:absolute;top:0;left:0;overflow:hidden;width:427px;height:33px;padding-left:22px;color:#000;background:#f5f6f8 none;border-bottom:1px solid #f0f1f3}
#minidaumMoreLayer .minidaum_more_custom a {color:#000;font-size:12px}
#minidaumMoreLayer .minidaum_more_custom li {float:left;line-height:33px;margin-right:21px}
#minidaumRank {float:left;position:relative;overflow:hidden;width:191px;height:19px;margin-top:9px;font-size:12px;letter-spacing:0}
#minidaumRank .minidaum_rank_tit {display:none;height:0;line-height:0}
#minidaumRank .minidaum_status {float:left;width:7px;height:12px;margin-right:2px;text-indent:-3000px}
#minidaumRank .minidaum_up {background:url(https://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat 0 -21px}
#minidaumRank .minidaum_down {background:url(https://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat -20px -21px}
#minidaumRank .minidaum_keep {background:url(https://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat -40px -19px}
#minidaumRank .minidaum_new {width:22px;background:url(https://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat -60px -20px}
#minidaumRank .minidaum_rank_list li {float:left;width:100%;padding-left:16px;height:23px;line-height:14px}
#minidaum .minidaum_rank_open {z-index:999999;width:190px;height:276px;margin-top:6px;font-family:'굴림',gulim,sans-serif;border:1px solid #444;background:#fff none}
#minidaum .minidaum_rank_open a {font-family:'굴림',gulim,sans-serif}
#minidaum .minidaum_rank_open li {position:relative}
#minidaum .minidaum_rank_open .num_issue {display:block;overflow:hidden;position:absolute;left:-9999px;width:1px;height:1px;font-size:0;line-height:0;text-indent:-9999px}
#minidaum .minidaum_rank_open .minidaum_rank_list {padding:11px 0 0 0;background-position:14px -158px}
#minidaum .minidaum_rank_open .minidaum_rank_list li {padding:0 0 0 14px}
#minidaum .minidaum_rank_open .minidaum_rank_tit {display:block;height:29px;line-height:31px;color:#565656;font-weight:bold;background:#f4f5f7;border-bottom:1px solid #dbdbdb;text-align:center;letter-spacing:-1px}
#minidaum .minidaum_rank_open .minidaum_word {overflow:hidden;width:115px;_width:137px;margin-right:1px;padding:0 0 0 22px;font-size:12px;color:#000;letter-spacing:0}
#minidaum .minidaum_rank_open .minidaum_dummy {display:none}
#minidaum .minidaum_rank_open .minidaum_num {font-size:10px;color:#4c4c4c}
#minidaum .minidaum_rank_open .minidaum_select .minidaum_word {font-weight:bold;letter-spacing:-1px}
#minidaum .minidaum_shield {position:absolute;top:0;left:0;z-index:-1}
#minidaum .minidaumMoreLayer_open .minidaum_shield,
#minidaum .minidaumUserLayer_open .minidaum_shield,
#minidaum .minidaum_rank_open .minidaum_shield {border:1px solid #fff}

/* white 버전 */
body {background:#fff url(https://i1.daumcdn.net/icon/minidaum/common/minibar_v03.gif) repeat-x}
#btnMinidaumLogin {float:left;overflow:hidden;width:46px;height:21px;background:url(https://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat -100px 0;text-indent:-9999px;vertical-align:bottom}
#minidaum .minidaum_logo {display:inline;float:left;margin:7px 15px 0 4px}
#minidaum .minidaum_logo .img_logo {display:block;overflow:hidden;width:45px;height:19px;background:url(https://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat;text-indent:-9999px}
.minidaum_service_list li {float:left;padding:0 8px 0 7px;background:url(https://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat 100% -129px}
#minidaumRank .minidaum_word {float:left;margin-top:1px;padding-right:6px;line-height:15px;color:#444;white-space:nowrap;letter-spacing:-1px}
*:first-child+html #minidaumRank .minidaum_word {line-height:14px}
#minidaumRank .minidaum_rank_list {float:left;width:190px;background:url(https://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat 0 -407px}
#minidaumRank .minidaum_num {float:left;line-height:15px;color:#666;font-size:11px;font-family:tahoma}
#minidaumRank .minidaum_dummy {background:url(https://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat 0 -407px}
#minidaumService li a {color:#444}
#minidaumService #minidaumMore {display:inline;float:left;padding:0 9px 0 7px;font-weight:bold;color:#444;background:url(https://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat 100% -75px}
#minidaumService .minidaum_service_list .minidaum_count {padding:0 2px 0 1px;font-weight:bold;color:#3c77eb}
#minidaumNick {padding-right:9px;line-height:17px;color:#444;background:url(https://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat 100% -61px}
*:first-child+html #minidaumNick {line-height:16px}
#minidaumUser.minidaum_login {padding-right:9px;margin-top:3px;line-height:16px;background:url(https://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat 100% -128px}
</style><script type="text/javascript" async="" src="https://m2.daumcdn.net/tiara/js/td.min.js?v=6199"></script>

      
 








<title>Express News a Entertainment Category Flat Bootstarp responsive Website Template | Home :: w3layouts</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all">
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="Express News Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- for bootstrap working -->
	<script type="text/javascript" src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- web-fonts -->
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic" rel="stylesheet" type="text/css">
<link href="//fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" type="text/css">
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
</head>
<body>
	<!-- header-section-starts-here -->
	<div class="header">
		<div class="header-top">
			<div class="wrap">
				<div class="top-menu">
					<ul>
						<li><a href="index.html">Home</a></li>
						<li><a href="about.html">About Us</a></li>
						<li><a href="privacy-policy.html">Privacy Policy</a></li>
						<li><a href="contact.html">Contact Us</a></li>
					</ul>
				</div>
				<div class="num">
					<ul><a href="../main/LoginMain.jsp">LOGOUT</a></ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="header-bottom">
			<div class="logo text-center">
				<a href="index.html"><img src="images/logo.jpg" alt=""></a>
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
						<li><a href="sports.html">GO TRAVELING</a></li>
				 		<li><a href="sports.html">공지사항</a></li>
						<li><a href="boardMain.jsp">게시판</a></li>
					  <li class="dropdown">
						<a href="business.html" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">마이페이지<b class="caret"></b></a>
						<ul class="dropdown-menu multi-column columns-2">
							<div class="row">
								<div class="col-sm-6">
									<ul class="multi-column-dropdown">
										<li><a href="mypage1.jsp">회원정보</a></li>
										<li class="divider"></li>
										<li><a href="mypage2.jsp">비밀번호변경</a></li>
									    <li class="divider"></li>
										<li><a href="mypage3.jsp">회원탈퇴</a></li>
										<li class="divider"></li>
										<li><a href="business.html">경로바구니</a></li>
										<li class="divider"></li>
										<li><a href="shortcodes.html">Short codes</a></li>
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
						<!-- 여기 폼 지웠어유... <form>  --> 
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
	<!-- header-section-ends-here -->
	<div class="wrap">
		<div class="move-text">
			<div class="breaking_news">
				<h2>공지사항</h2>
			</div>
			<div class="marquee"><div style="width: 100000px; margin-left: 1383px; animation: marqueeAnimation-7366917 9.17932s linear 1s infinite running;" class="js-marquee-wrapper"><div class="js-marquee" style="margin-right: 0px; float: left;">
				<div class="marquee1"><a class="breaking" href="single.html">&gt;&gt;The standard chunk of Lorem Ipsum used since the 1500s is reproduced..</a></div>
				<div class="marquee2"><a class="breaking" href="single.html">&gt;&gt;At vero eos et accusamus et iusto qui blanditiis praesentium voluptatum deleniti atque..</a></div>
				<div class="clearfix"></div>
			</div></div></div>
			<div class="clearfix"></div>
			<script type="text/javascript" src="js/jquery.marquee.min.js"></script>
			<script>
			  $('.marquee').marquee({ pauseOnHover: true });
			  //@ sourceURL=pen.js
			</script>
		</div>
	</div>
	<!-- content-section-starts-here -->
	<div class="main-body">
		<div class="wrap">
			
<div class="col-md-8 content-left">
				
<div id="daumWrap" class="">
    <div id="daumIndex"> <!-- 웹접근성용 바로가기 링크 모음 -->
    <a href="#daumBody">본문 바로가기</a>
    <a href="#daumGnb">메뉴 바로가기</a>
</div>



 <hr class="hide">
    <div id="daumContent" role="main">    
      <div id="cMain">
        <div id="mArticle">
          <div class="dimmed_layer" style="display:none"></div>
          <h2 id="daumBody" class="screen_out">회원탈퇴 안내동의 본문</h2>
          <div class="myinfo_intro intro_out">
            <span class="bg_intro"></span>
            <div class="cont_intro">
              <h3 class="tit_comm tit_outagree">회원탈퇴에 앞서 유의사항 및 안내를 반드시 읽고 진행해 주세요!</h3>
            </div>
          </div>
          <form action="out.jsp?action=agree-check" method="post">

            <div class="info_agree">
              
              <div class="info_user">
                <strong class="tit_agree">아이디 재사용 및 복구 불가 안내</strong>
                <span class="txt_agree">회원탈퇴 진행 시 본인을 포함한 타인 모두 <em class="emph_g">아이디 재사용이나 복구가 불가능합니다.</em><br>
                신중히 선택하신 후 결정해주세요.</span>
                <span class="check_notice">
                  <input type="checkbox" id="idAgree" name="idAgree" class="tf_check">
                  <label for="idAgree" class="lab_check">
                    <span class="ico_comm ico_check"></span>
                    동의
                  </label>
                </span>
              </div>
              
              <div class="info_user">
                <strong class="tit_agree">내정보 및 개인형 서비스 이용 기록 삭제 안내</strong>
                <span class="txt_agree">내정보 및 개인형 서비스 이용기록이 모두 삭제되며,<em class="emph_g">삭제된 데이터는 복구되지 않습니다.</em><br>삭제되는 서비스를 확인하시고, 필요한 데이터는 미리 백업을 해주세요.</span>
                <dl class="list_agree">
                  <dt class="tit_service"><a href="http://mail.daum.net" class="link_service">메일</a></dt>
                  <dd class="txt_service">메일 계정 및 보관중인 메일 삭제</dd>
                  <dt class="tit_service"><a href="http://blog.daum.net/" class="link_service">블로그</a></dt>
                  <dd class="txt_service">블로그 계정 및 포스팅 게시글 삭제</dd>
                  <dt class="tit_service"><a href="http://cloud.daum.net/" class="link_service">클라우드</a></dt>
                  <dd class="txt_service">저장된 파일 삭제 (탈퇴 전 파일 백업 가능)</dd>
                  <dt class="tit_service"><a href="http://addrbook.daum.net/" class="link_service">주소록</a></dt>
                  <dd class="txt_service">저장된 주소 삭제 및 주소 업데이트 중단</dd>
                  <dt class="tit_service"><a href="http://code.daum.net/web/" class="link_service">코드</a></dt>
                  <dd class="txt_service">생성한 QR코드 삭제</dd>
                  <dt class="tit_service">이용권</dt>
                  <dd class="txt_service lst">만화 등 이용권 정보 삭제</dd>
                  <dt class="tit_service">게임</dt>
                  <dd class="txt_service lst">게임 정보(캐릭터, 아이템, 유료 콘텐츠 등) 삭제</dd>
                </dl>
                <span class="check_notice">
                  <input type="checkbox" id="serviceAgree" name="serviceAgree" class="tf_check">
                  <label for="serviceAgree" class="lab_check">
                    <span class="ico_comm ico_check"></span>
                    동의
                  </label>
                </span>
              </div>
              
              <div class="info_user">
                <strong class="tit_agree">게시판형 서비스에 등록한 게시글 삭제 불가 안내</strong>
                <span class="txt_agree">삭제를 원하는 게시글이 있다면 반드시 회원탈퇴 전 비공개 처리하거나 삭제하시기 바랍니다.<br>탈퇴 후에는 회원정보가 삭제되어 본인 여부를 확인할 수 있는 방법이 없어, <em class="emph_g">게시글을 임의로 삭제해드릴 수 없습니다.</em></span>
                <dl class="list_agree">
                  <dt class="tit_service"><a href="http://tip.daum.net/" class="link_service">TIP</a></dt>
                  <dd class="txt_service">나의 질문 및 답변, 내가 남긴 의견 등</dd>
                  <dt class="tit_service"><a href="http://cafe.daum.net/" class="link_service">카페</a></dt>
                  <dd class="txt_service">게시물 및 댓글</dd>
                  <dt class="tit_service"><a href="http://media.daum.net/" class="link_service">뉴스</a></dt>
                  <dd class="txt_service">아고라 게시물 및 의견</dd>
                  <dt class="tit_service">기타</dt>
                  <dd class="txt_service">공적인 영역의 게시물과 댓글, 의견 등</dd>
                </dl>
                <span class="check_notice">
                  <input type="checkbox" id="boardAgree" name="boardAgree" class="tf_check">
                  <label for="boardAgree" class="lab_check">
                    <span class="ico_comm ico_check"></span>
                    동의
                  </label>
                </span>
              </div>
            </div>
            <div class="wrap_btn">
              <button class="btn_comm btn_confirm" type="submit"><span class="screen_out">탈퇴</span></button>
            </div>
          </form>
          
          <!-- 회원탈퇴_안내동의 팝업 -->
          <div id="wrongLayer" class="userinfo_layer" style="top:300px;margin-left:-188px;display:none;">
            <div class="inner_myinfo_layer">
              <div class="layer_head">
                <strong class="screen_out">회원탈퇴 안내동의 레이어</strong>
              </div>
              <div class="layer_body">
                <strong class="tit_layer">안내사항을 확인하신 후, 동의해 주세요.</strong>
                <div class="btn_process">
                  <button type="button" class="btn_comm btn_ok"><span class="screen_out">확인</span></button>
                </div>
              </div>
              <div class="layer_foot">
                <button type="button" class="btn_comm btn_close">닫기</button>
              </div>
            </div>
          </div>
          
        </div><!--// mArticle -->
      </div><!-- // cMain -->    
    </div> 
  <!-- // daumContent -->
<hr class="hide">
	<!-- // daumFoot -->

</div>
<script type="text/javascript">
    var _tiq = 'undefined' !== typeof _tiq ? _tiq : []; // Global Variables
</script>
<script type="text/javascript">
    var minidaum_options = {
        bgType: "white",
        enableLogoutRetun: false,
        returnUrl: '',
        disableHotissue: false,
        disableLogo: false,
        disableTracker: false,
        enableShield: false
    }
</script>
<script src="https://go.daum.net/jsa_minidaum_pc.daum" charset="utf-8" type="text/javascript"></script>
<script type="text/javascript" src="https://s1.daumcdn.net/svc/original/U03/cssjs/jquery/jquery-1.10.2.min.js"></script>

<script type="text/javascript" src="content/jquery.form.member.init.js"></script>
<script type="text/javascript" src="content/jquery.form.validate.js"></script>


<script type="text/javascript">
$(document).ready(function(){

  var validator = $("form").validate(
    {
      rules: {
        idAgree: "required",
        serviceAgree: "required",
        boardAgree: "required"
      },
      messages: {
        idAgree: "안내사항을 확인하신 후, 동의해 주세요.",
        serviceAgree: "안내사항을 확인하신 후, 동의해 주세요.",
        boardAgree: "안내사항을 확인하신 후, 동의해 주세요."
      }
    }
  );
  
  var form = $("form").getForm();
  form.bindCheckBoxEvent();
  


         
  var submitted = false;
  $("form").submit(function() {
    if(!submitted) {
      submitted = true;
      var errorList = validator.getFormErrorList();
      if(errorList.length !== 0) {
        var errorMsg = "";
        for(var i=0; errorList[i]; i++) {
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
  
  $(".btn_close, .btn_ok, .btn_numnot").click(function(){
    form.hideAllLayer();
  });
  
});    
</script>









				
					<div class="sports-top">
							<div class="s-grid-left">
								
								</div>
							<div class="s-grid-right">
								
								</div>
								
							</div>
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
					<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
					<p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here.</p>
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
							<li>CENTER FOR FINANCIAL ASSISTANCE TO DEPOSED NIGERIAN ROYALTY</li>
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
					<p> © 2015 Express News. All Rights Reserved | Design by  <a href="http://w3layouts.com/"> W3layouts</a></p>
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
				wrapID: 'toTop', // fading element id
				wrapHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
				*/
		$().UItoTop({ easingType: 'easeOutQuart' });
});
</script>
<a href="#to-top" id="toTop" style="display: none;"><span id="toTopHover"></span><span id="toTopHover"></span><span id="toTopHover"></span> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!---->

<a href="#" id="toTop">To Top</a><a href="#" id="toTop">To Top</a><a href="#" id="toTop">To Top</a></body></html>