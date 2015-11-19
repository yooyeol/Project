<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%@page import="java.util.*"%>


<!DOCTYPE html>
<html>
<head>

<!--  daum.header.start -->
<meta charset="utf-8">
<title>내정보 관리</title>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<link rel="stylesheet" type="text/css" href="content/my.css">
<%@include file="daum.jsp"%>
<!--  daum.header.end -->


</head>



<body>



	<!-- header-section-starts-here -->
	<%@include file="mainHeader.jsp"%>



	<!-- content-section-starts-here -->
	<div class="main-body">
		<div class="wrap">

			<div class="col-md-8 content-left">


				<div id="daumWrap" class="userinfo_type1 ">
					<div id="daumIndex">
						<!-- 웹접근성용 바로가기 링크 모음 -->
						<a href="#daumBody">본문 바로가기</a> <a href="#daumGnb">메뉴 바로가기</a>
					</div>



					<hr class="hide">

					<div id="daumContent" role="main" class="cont_home">
						<div id="mArticle">
							<h2 id="daumBody" class="screen_out">내정보 관리 본문</h2>
							<div class="section_my">
								<h3 class="tit_comm tit_manage">내 정보를 최신 정보로 관리해 주세요.</h3>
								<p class="tit_comm desc_manage">아이디/비밀번호 분실 및 보호조치 해제를 위해 최신
									정보로 내정보를 관리하세요.</p>
							</div>


							<%
								String id2 = session.getAttribute("idKey").toString();

								String sql2 = "select memberEmail,MemberName,memberTel,memberZipCode,memberAddr from MEMBER where memberEmail=?";

								/* 		Connection conn = null;
										PreparedStatement pstmt = null;
										ResultSet rs = null; */
								try {
									Class.forName("com.mysql.jdbc.Driver").newInstance();
								} catch (ClassNotFoundException e) {
									out.println("class not found");
								} catch (Exception etc) {
									out.println("etc exception");
									out.println(etc.getMessage());
								}
								try {

									String url = "jdbc:mysql://kitri.iptime.org:3306/YogiJogi?useUnicode=true&characterEncoding=UTF-8";
									String userId = "yogijogi";
									String userPass = "yogijogi";

									conn = DriverManager.getConnection(url, userId, userPass);

									pstmt = conn.prepareStatement(sql2);
									pstmt.setString(1, id2);
									rs = pstmt.executeQuery();
									String subemail = "";
									String subname = "";
									String subphone = "";
									String subaddr1 = "";
									String subaddr2 = "";

									while (rs.next()) {

										subemail = rs.getString(1);
										subname = rs.getString(2);
										subphone = rs.getString(3);
										subaddr1 = rs.getString(4);
										subaddr2 = rs.getString(5);
							%>
							<div class="set_myinfo clear_g">

								<div class="cont_myinfo">
									<dl class="list_myinfo">
										<dt class="txt_comm txt_emailid">이메일 아이디</dt>
										<dd class="desc_myinfo emph_myinfo"><%=subemail%></dd>
									</dl>

								</div>
							</div>



							<div class="set_myinfo clear_g">
								<div class="cont_myinfo">
									<dl class="list_myinfo">
										<dt class="txt_comm txt_name">이름</dt>
										<dd class="desc_myinfo"><%=subname%></dd>
									</dl>

								</div>
							</div>



							<div class="set_myinfo clear_g">

								<div class="cont_myinfo">
									<dl class="list_myinfo">
										<dt class="txt_comm txt_contact">연락처</dt>

										<dd class="desc_myinfo">

											<span class="contact_info"><span
												class="ico_comm ico_phone">핸드폰 번호</span> <%=subphone%>

												<button type="button" id="changePhoneBtn"
													class="btn_comm btn_change">
													<span class="screen_out">변경</span>
												</button>
										</dd>
										<form id="nicknameForm" action="updatePhone.jsp" method="post">
											<dd id="phoneChangeDiv" class="desc_myinfo"
												style="display: none">
												<div class="area_nickname">
													<input type="text" id="daumname" name="memberPhone"
														class="tf_f" value=""> <span
														id="daumnamePlaceHolder" class="lab_nick screen_out">핸드폰
														번호를 입력해주세요. </span>
												</div>
												<button type="submit" class="btn_comm btn_save">
													<span class="screen_out">저장</span>
												</button>
												<button type="button" id="changePhoneCancelBtn"
													class="btn_comm btn_cancle">
													<span class="screen_out">취소</span>
												</button>

											</dd>
										</form>
									</dl>

								</div>
							</div>






							<div class="set_myinfo clear_g">

								<div class="cont_myinfo">
									<dl class="list_myinfo">
										<dt class="txt_comm txt_address">주소</dt>
										<dd class="desc_myinfo emph_myinfo">
											<span class="contact_info"><span class=""></span> <%=subaddr1%><br><%=subaddr2%>

												<button type="button" id="changeAddrBtn"
													class="btn_comm btn_change" onClick="zipCheck()">
													<span class="screen_out">변경</span>
												</button>
										</dd>
										<form name="regFrm" id="defaultForm" method="post"
											class="form-horizontal fv-form fv-form-bootstrap"
											action="updateAddr.jsp" novalidate="novalidate">
											<button type="submit" class="fv-hidden-submit"
												style="display: none; width: 0px; height: 0px;"></button>
											<button type="submit" class="fv-hidden-submit disabled"
												style="display: none; width: 0px; height: 0px;"
												disabled="disabled"></button>

											<dd id="addrChangeDiv" class="desc_myinfo"
												style="display: none">
												<div class="area_nickname">
													<input type="text" id="addr1" name="memberZipCode"
														name="daumname" value="<%=subaddr1%>" class="tf_g">
													<input type="text" id="addr2" name="memberAddr"
														name="daumname" value="<%=subaddr2%>" class="tf_h">

													<span id="daumnamePlaceHolder" class="lab_nick screen_out">주소를
														입력해주세요. </span>
												</div>




												<button type="submit" class="btn_comm btn_save">
													<span class="screen_out">저장</span>
												</button>
												<button type="button" id="changeAddrCancelBtn"
													class="btn_comm btn_cancle">
													<span class="screen_out">취소</span>
												</button>

											</dd>
										</form>
									</dl>
								</div>
							</div>




							<%
								}
							%>

							<%
								} catch (SQLException e) {
									e.printStackTrace();
									//out.println("SQLException : " + e.getMessage());
								} finally {
									if (rs != null)
										rs.close();
									if (pstmt != null)
										pstmt.close();
									if (conn != null)
										conn.close();
								}
							%>





							<div class="set_myinfo clear_g">
								<strong class="txt_comm tit_alarm">알림설정</strong>
								<div class="cont_myinfo">
									<dl class="list_myinfo">
										<dt class="txt_comm txt_adver">소식/광고 메일</dt>
										<dd class="desc_myinfo txt_none">수신안함</dd>
									</dl>
									<dl class="list_myinfo">
										<dt class="txt_comm txt_pw">비밀번호 변경알림</dt>
										<dd class="desc_myinfo  txt_none">수신안함</dd>
									</dl>
								</div>

							</div>

						</div>
						<!--// mArticle -->
						<div id="mAside"></div>
						<!--// mAside -->
					</div>
					<!-- // cMain -->
				</div>












				<!-- 로그인 아이디 삭제 레이어 -->
				<div id="loginIdDeleteLayer" style="display: none;">
					<form id="removeLoginIdForm" action="/my/emailid.daum"
						method="post">
						<div class="dimmed_layer"></div>
						<div class="userinfo_layer"
							style="margin-left: -188px; top: 280px;">
							<div class="inner_myinfo_layer">
								<div class="layer_head">
									<strong class="screen_out">내정보 관리 안내 레이어</strong>
								</div>
								<div class="layer_body">
									<strong class="tit_layer"><span id="deleteType">이메일</span>
										아이디 <em id="loginIdConfirm" class="emph_info"></em> (을)를
										삭제하시겠습니까?<br>삭제 후에는 <span id="deleteContact">휴대폰
											번호</span>가 즉시 파기됩니다.</strong>
									<div class="btn_process">
										<button type="submit" class="btn_comm btn_ok">
											<span class="screen_out">확인</span>
										</button>
										<button type="button" id="deleteLoginIdCancel"
											class="btn_comm btn_cancel">
											<span class="screen_out">취소</span>
										</button>
									</div>
								</div>
								<div class="layer_foot">
									<button id="loginIdLayerClosebtn" type="button"
										class="btn_comm btn_close">닫기</button>
								</div>
							</div>
						</div>
						<input type="hidden" id="removeLoginIdType" name="type"> <input
							type="hidden" name="action" value="delete"> <input
							type="hidden" name="PAGEID" value="9da6">
					</form>
					<!-- // daumContent -->
				</div>


				<!-- SNS disconnect 레이어 -->
				<div id="disconnectSnsLayer" style="display: none">
					<div class="dimmed_layer"></div>
					<div class="userinfo_layer"
						style="margin-left: -188px; top: 280px;">
						<div class="inner_myinfo_layer">
							<div class="layer_head">
								<strong class="screen_out">내정보 관리 안내 레이어</strong>
							</div>
							<div class="layer_body">
								<strong class="tit_layer"><em class="emph_info"></em>
									연결을 해제하시겠습니까?<br>연결 해제 시 이용하시는 모든 연동기능 서비스도 함께 해제됩니다</strong>

								<div class="btn_process">
									<button type="button" id="disconnectSns"
										class="btn_comm btn_ok">
										<span class="screen_out">확인</span>
									</button>
									<button type="button" id="disconnectSnsLayerCancel"
										class="btn_comm btn_cancel">
										<span class="screen_out">취소</span>
									</button>
								</div>
							</div>
							<div class="layer_foot">
								<button type="button" id="disconnectSnsLayerCloseBtn"
									class="btn_comm btn_close">닫기</button>
							</div>
						</div>
					</div>
				</div>

				<div id="mobileDeleteLayer" style="display: none">
					<div class="dimmed_layer"></div>
					<div class="userinfo_layer"
						style="margin-left: -188px; top: 280px;">
						<div class="inner_myinfo_layer">
							<div class="layer_head">
								<strong class="screen_out">휴대폰 번호 삭제 알림 레이어</strong>
							</div>
							<div class="layer_body">
								<strong class="tit_layer">휴대폰 번호 <em class="emph_info">010-8***-***6</em>(을)를<br>삭제하시겠습니까?<br>삭제
									후에는 휴대폰 번호가 즉시 파기됩니다.
								</strong>
								<div class="btn_process">
									<button type="button" id="mobileDeleteOkBtn"
										class="btn_comm btn_ok">
										<span class="screen_out">확인</span>
									</button>
									<button type="button" id="mobileDeleteCancelBtn"
										class="btn_comm btn_cancel">
										<span class="screen_out">취소</span>
									</button>
								</div>
							</div>
							<div class="layer_foot">
								<button type="button" id="mobileDeleteCloseBtn"
									class="btn_comm btn_close">닫기</button>
							</div>
						</div>
					</div>
				</div>

				<div id="othermailDeleteLayer" style="display: none">
					<div class="dimmed_layer"></div>
					<div class="userinfo_layer"
						style="margin-left: -188px; top: 280px;">
						<div class="inner_myinfo_layer">
							<div class="layer_head">
								<strong class="screen_out">이메일 주소 삭제 알림 레이어</strong>
							</div>
							<div class="layer_body">
								<strong class="tit_layer">이메일 주소<em class="emph_info">
										ca******@na******.com</em><br>(을)를 삭제하시겠습니까?<br>삭제 후에는
									이메일 주소가 즉시 파기됩니다.
								</strong>
								<!-- 2015-09-25 수정 -->
								<div class="btn_process">
									<button type="button" id="othermailDeleteOkBtn"
										class="btn_comm btn_ok">
										<span class="screen_out">확인</span>
									</button>
									<button type="button" id="othermailDeleteCancelBtn"
										class="btn_comm btn_cancel">
										<span class="screen_out">취소</span>
									</button>
								</div>
							</div>
							<div class="layer_foot">
								<button type="button" id="othermailDeleteCloseBtn"
									class="btn_comm btn_close">닫기</button>
							</div>
						</div>
					</div>
				</div>

				<div id="deleteInfoLayer" style="display: none">
					<div class="dimmed_layer"></div>
					<div class="userinfo_layer"
						style="margin-left: -188px; top: 280px;">
						<div class="inner_myinfo_layer">
							<div class="layer_head">
								<strong class="screen_out">삭제 안내 레이어</strong>
							</div>
							<div class="layer_body">
								<strong class="tit_layer">휴대폰 또는 이메일 중 1개는 반드시 등록해야
									합니다.<br>다른 연락처를 등록한 후 삭제해 주세요.
								</strong>
								<div class="btn_process">
									<button type="button" id="deleteInfoOkBtn"
										class="btn_comm btn_ok">
										<span class="screen_out">확인</span>
									</button>
								</div>
							</div>
							<div class="layer_foot">
								<button type="button" id="deleteInfoCloseBtn"
									class="btn_comm btn_close">닫기</button>
							</div>
						</div>
					</div>
				</div>
				<form id="removeMobileForm"
					action="https://member.daum.net/change/mobile.daum?action=remove"
					method="post"></form>

				<form id="removeOthermailForm"
					action="https://member.daum.net/change/email.daum?action=remove"
					method="post"></form>


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






			<script type="text/javascript" async=""
				src="http://m2.daumcdn.net/tiara/js/td.min.js?v=6199"></script>
			<script src="https://go.daum.net/jsa_minidaum_pc.daum"
				charset="utf-8" type="text/javascript"></script>
			<script type="text/javascript"
				src="https://s1.daumcdn.net/svc/original/U03/cssjs/jquery/jquery-1.10.2.min.js"></script>

			<script type="text/javascript" src="content/jquery.form.validate.js"></script>
			<script type="text/javascript"
				src="content/jquery.form.member.init.js"></script>
			<script type="text/javascript" src="content/jquery.api.js"></script>
			<script type="text/javascript" src="content/validate.options.js"></script>
			<script type="text/javascript" src="content/messages.js"></script>
			<script type="text/javascript">
				function zipCheck(){
	var url = "zipCheck.jsp?check=y";
	window.open(url,"주소 검색","width=500, height=300, scrollbars=yes");
}

$focus = null;

$(document).ready(function() {
    var validator = $("#nicknameForm").validate({
        rules : {
            daumname : {
                required : true,
                daumnameinvalid: true,
                daumnamekoreannamelength: true,
                daumnameenglishnamelength: true,
                numberdaumnamelength: true
            }
        },
        messages : {
            daumname: {
                required: "닉네임은 필수 입력 항목입니다."
            }
        }
    });

    var form = $("#nicknameForm").getForm({
        getElementForShowError: function(element){return $(element).parent().parent()},
        getElementLabel: function(element){return $(element).next("span");},
        getElementGuideMessage: function (id) {
            if (id == "daumname") {
                return "한글 15자, 영문 대소문자 2~30자, 숫자, ‘-‘, ‘_’ 를 사용할 수 있습니다. (혼용가능)";
            }
        },
        inputWrongClass: "desc_wrong"
    });
    form.initWebRow('.desc_myinfo');

                
    $("#nicknameForm").submit(function(){
        var errorList = validator2.getFormErrorList();
        if (errorList.length !== 0) {
            for (var i = 0; errorList[i]; i++) {
                var error = errorList[i];
                form.showError(error.element.id, error.message);
            }
            errorList[0].element.focus();
            return false;
        }
        return true;
    });

    $("#changePhoneBtn").on("click", function(){
        $("#daumname").val("");
        $("#daumnamePlaceHolder").addClass("screen_out");
        $("#phoneChangeDiv").removeClass("desc_wrong");
        $("#daumnameDesc").text("한글 15자, 영문 대소문자 2~30자, 숫자, ‘-‘, ‘_’ 를 사용할 수 있습니다. (혼용가능)");
        $("#phoneDiv").hide();
        $("#phoneChangeDiv").show();
    });
    
    $("#changeAddrBtn").on("click", function(){
        $("#daumname").val("");
        $("#daumnamePlaceHolder").addClass("screen_out");
        $("#addrChangeDiv").removeClass("desc_wrong");
        $("#daumnameDesc").text("한글 15자, 영문 대소문자 2~30자, 숫자, ‘-‘, ‘_’ 를 사용할 수 있습니다. (혼용가능)");
        $("#addrDiv").hide();
        $("#addrChangeDiv").show();
    });
    
    
    
    
    $("#changePhoneCancelBtn").on("click", function(){

        $("#phoneDiv").show()
        $("#phoneChangeDiv").hide();
    });
    
    $("#changeAddrCancelBtn").on("click", function(){

        $("#addrDiv").show()
        $("#addrChangeDiv").hide();
    });

    $("#changeMobileBtn").on("click", function(){
        $(location).attr('href','https://member.daum.net/change/mobile.daum');
    });

    $("#registerMobileBtn").on("click", function(){
        $(location).attr('href','https://member.daum.net/change/mobile.daum');
    });
    $("#changeOthermailBtn").on("click", function(){
        $(location).attr('href','https://member.daum.net/change/email.daum');
    });

    $("#deleteMobileBtn").on("click", function(){
        if(false) {
            $("#deleteInfoLayer").show().find(".btn_ok").focus();
        } else {
            $("#mobileDeleteLayer").show().find(".btn_ok").focus();
        }

    });
    $("#deleteOthermailBtn").on("click", function(){
        if(false) {
            $("#deleteInfoLayer").show().find(".btn_ok").focus();
        } else {
            $("#othermailDeleteLayer").show().find(".btn_ok").focus();
        }
    });
    $("#registerOthermailBtn").on("click", function(){
        $(location).attr('href','https://member.daum.net/change/email.daum');
    });

    $("#othermailDeleteOkBtn").on("click", function(){
        $("#removeOthermailForm").submit();
    });
    $("#mobileDeleteOkBtn").on("click", function(){
        $("#removeMobileForm").submit();
    });


    $("#deleteInfoOkBtn, #deleteInfoCloseBtn").on("click", function(){
        $("#deleteInfoLayer").hide();
        return false;
    });

    $("#mobileDeleteCancelBtn, #mobileDeleteCloseBtn").on("click", function(event){
        $("#mobileDeleteLayer").hide();
        return false;
    });

    $("#othermailDeleteCancelBtn, #othermailDeleteCloseBtn").on("click", function(event){
        $("#othermailDeleteLayer").hide();
        return false;
    });


	$("#btnEmailIdRegister, #btnEmailIdModify").on("click", function() {
		$(location).attr('href','/my/emailid.daum');
	});
	
	$("#btnEmailIdDelete").on("click", function() {
		$focus = $(this);
		
		checkValidSession("9da6", "email");
		//removeLoginId("email");
	});
	
	$("#btnPhoneIdRegister, #btnPhoneIdModify").on("click", function() {
		$(location).attr('href','/my/phoneid.daum');
	});
	
	$("#btnPhoneIdDelete").on("click", function() {
		$focus = $(this);
		
		checkValidSession("9da6", "phone");
		//removeLoginId("phone");
	});

	$("#deleteLoginIdCancel, #loginIdLayerClosebtn").on("click", function (event) {
		$("#loginIdDeleteLayer").hide();
		$focus.focus();
		return false;
	});
	
	$("#disconnectSnsLayerCloseBtn, #disconnectSnsLayerCancel").on("click", function (event) {
		$("#disconnectSnsLayer").hide();
		$focus.focus();
		return false;
	});
	
	$(".btn_name").on("click",function() {
		$(location).attr('href','https://member.daum.net/rename.daum');
	});
	

	$(".btn_blindness").on("click",function() {
		$(location).attr('href','https://member.daum.net/namecheck.daum?svcCode=10&rtnUrl=https://member.daum.net/my/basic.daum');
	});
	
	$(".btn_question").mouseover(function() {
		$(this).next(".layer_certify").show();
		$("#layerDiv").addClass("layer_open");
	}).mouseout(function() {
		$(this).next(".layer_certify").hide();
		$("#layerDiv").removeClass("layer_open");
	}).focusin(function() {
		$(this).next(".layer_certify").show();
		$("#layerDiv").addClass("layer_open");
	}).focusout(function() {
		$(this).next(".layer_certify").hide();
		$("#layerDiv").removeClass("layer_open");
	})
	
	$("#disconnectSns").on("click", function (event) {
		var type = $("#disconnectSns").val();
		if(type == "") { 
			return;
		}
		var url = "/my/sns/disconnect/" + type + ".daum"
		
		callAPI(
				url,
				"",
				function (data) {			
					location.reload();
				},
				function (data) {			
					location.reload();
				}
		);
	});
	

	$(".list_sns li > a").click(function(){
		$focus = $(this);
	});
});



//로그인 아이디 제거
var removeLoginId = function (type) { 
	var loginId = (type === "email")?"":"";
	
	$("#removeLoginIdType").val(type);	
	if (type === "email") {
		$("#removeLoginIdForm").attr("action", "/my/emailid.daum");
		$("#loginIdConfirm").html("");
		$("#deleteType").html("이메일");
        $("#deleteContact").html("이메일 주소");
		
	} else if (type === "phone") {
		$("#removeLoginIdForm").attr("action", "/my/phoneid.daum");
		$("#loginIdConfirm").html("");
		$("#deleteType").html("폰번호");
        $("#deleteContact").html("휴대폰 번호");
	}
	
	$("#loginIdDeleteLayer").show().find(".btn_ok").focus();

};

var checkValidSession = function (key, type) {
	$.when($.api.call("checkVerifySession", {pageid:key})).then(function (data) {
		if (data.message !== "OK") {
			alert(messages.forbidden_error);
			location.href = "https://member.daum.net/my/basic.daum";
		}
		else {
			removeLoginId(type);
		}
	}, function (data) {
		if (data.code === 400) {
			alert(data.message);
		} else {
			alert(data.errorMessage);
		}	
	}); 
};

var disconnectSns = function (type) { 
	var serviceName = "";
	switch(type) {
		case "twitter":
			serviceName = "트위터";
			break;
		case "facebook":
			serviceName = "페이스북";
			break;
		case "nate":
			serviceName = "네이트";
			break;
		case "tistory":
			serviceName = "티스토리";
			break;
	}
	
	$("#disconnectSns").val(type);
	$("#disconnectSnsLayer .emph_info").html(serviceName);
	
			
	$("#disconnectSnsLayer").show().find(".btn_ok").focus();
}

var connectSns = function (type) { 
	var wWidth = 300;
	var wHeight = 300;
	
	switch(type) {
		case "twitter":
			wWidth = 810;
			wHeight = 500;
			break;
		case "facebook":
			wWidth = 1024;
			wHeight = 840;
			break;
		case "nate":
			wWidth = 440;
			wHeight = 400;
			break;
		case "tistory":
			wWidth = 1190;
			wHeight = 570;
			break;
	}
	var url = "/my/sns/connect/" + type + ".daum"
	window.open(url, "windowSNSPage", "width="+ wWidth +", height="+ wHeight +", scrollbars=yes, resizalbe=yes");
}


var callAPI = function (url, param, successCallback, failCallback) {
	$.ajax (
		getCommonAjaxParam(url, param)
	)
	.done (function (data) {
		if (typeof successCallback === "function") {
			successCallback.call(this, data);
		}
	})
	.fail (function (data) {
		if (typeof failCallback === "function") {
			failCallback.call(this, data);
		}
	});		
};

//Ajax call parameter 
var getCommonAjaxParam = function (url, param) {
	param.serviceType = "modify";

	return {
		url: url,
		type: "POST",
		dataType: "json",
		data: param,
		async: false
	};
};

var getUnder14Year = function () {
	
	var biryr = '1989';               
	var birmonday  = '0414'; 
	
	var userBirthDay = biryr + birmonday;
	
    var today = getToday();

    if(today - userBirthDay < 140000) {
        return "kidAuth";
    } else {
        return "generalAuth";
    }
    
}

var getToday = function() {
    $today = new Date();
    $currentYear = $today.getFullYear();
    $currentMonth = $today.getMonth() + 1;
    $currentDay = $today.getDate();

    if ($currentMonth < 10) {
        $currentMonth = "0" + $currentMonth;
    } else {
        $currentMonth = "" + $currentMonth;
    }
    if ($currentDay < 10) {
        $currentDay = "0" + $currentDay;
    } else {
        $currentDay = "" + $currentDay;
    }
    return $currentYear  + $currentMonth  + $currentDay;
}
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