<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" hola_ext_inject="disabled"><head>
    <meta charset="utf-8">
    <title>회원정보 수정 페이지</title>
      <meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <link rel="stylesheet" type="text/css" href="content/change.css"> 
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
.minidaum_service_list .minidaum_new{display:inline-block;overflow:hidden;width:11px;height:12px;margin-left:3px;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat -160px -270px;text-indent:-3000px;vertical-align:bottom}
.minidaum_service_list .minidaum_count * {margin-top:0}
#minidaumMoreLayer {display:none;position:absolute;top:27px;right:0;overflow:hidden;width:449px;height:223px;font-size:12px;background:#fff none;border:1px solid #444;letter-spacing:0}
#minidaumMoreLayer.minidaumMoreLayer_open {display:block;z-index:999999}
#minidaumMoreLayer .minidaum_idx {overflow:hidden;position:absolute;top:16px;width:36px;height:13px;text-indent:-9999px}
#minidaumMoreLayer .minidaum_idx1 {left:22px;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat 0 -40px}
#minidaumMoreLayer .minidaum_idx2 {left:104px;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat -40px -40px}
#minidaumMoreLayer .minidaum_idx3 {left:194px;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat -80px -40px}
#minidaumMoreLayer .minidaum_idx4 {left:284px;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat -120px -40px}
#minidaumMoreLayer .minidaum_idx5 {left:374px;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat -160px -40px}
#minidaumMoreLayer .minidaum_list_group {float:left;width:89px;height:176px;margin-top:16px;padding-top:20px;border-left:1px solid #ebeef2}
#minidaumMoreLayer .minidaum_list_group li {float:left;overflow:hidden;width:100%;height:22px;line-height:23px;text-indent:13px}
#minidaumMoreLayer .minidaum_list_group1 li {float:left;overflow:hidden;width:100%;height:22px;line-height:23px;text-indent:21px}
#minidaumMoreLayer .minidaum_list_group li a {font-size:12px;color:#333;white-space:nowrap}
#minidaumMoreLayer .minidaum_list_group .last {height:18px}
#minidaumMoreLayer .minidaum_list_group1 {width:89px;border:none}
#minidaumMoreLayer .minidaum_list_group5 {width:86px}
#minidaumMoreLayer .minidaum_list_group .minidaum_all a {padding-right:7px;color:#5279b4;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat 100% -147px;text-decoration:underline;letter-spacing:-1px}
#minidaumMoreLayer.minidaum_custom .minidaum_idx {top:49px}
#minidaum .minidaum_custom {height:258px}
#minidaum .minidaum_custom .minidaum_list_group {margin-top:49px}
#minidaumMoreLayer .minidaum_more_custom {position:absolute;top:0;left:0;overflow:hidden;width:427px;height:33px;padding-left:22px;color:#000;background:#f5f6f8 none;border-bottom:1px solid #f0f1f3}
#minidaumMoreLayer .minidaum_more_custom a {color:#000;font-size:12px}
#minidaumMoreLayer .minidaum_more_custom li {float:left;line-height:33px;margin-right:21px}
#minidaumRank {float:left;position:relative;overflow:hidden;width:191px;height:19px;margin-top:9px;font-size:12px;letter-spacing:0}
#minidaumRank .minidaum_rank_tit {display:none;height:0;line-height:0}
#minidaumRank .minidaum_status {float:left;width:7px;height:12px;margin-right:2px;text-indent:-3000px}
#minidaumRank .minidaum_up {background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat 0 -21px}
#minidaumRank .minidaum_down {background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat -20px -21px}
#minidaumRank .minidaum_keep {background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat -40px -19px}
#minidaumRank .minidaum_new {width:22px;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat -60px -20px}
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
body {background:#fff url(http://i1.daumcdn.net/icon/minidaum/common/minibar_v03.gif) repeat-x}
#btnMinidaumLogin {float:left;overflow:hidden;width:46px;height:21px;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat -100px 0;text-indent:-9999px;vertical-align:bottom}
#minidaum .minidaum_logo {display:inline;float:left;margin:7px 15px 0 4px}
#minidaum .minidaum_logo .img_logo {display:block;overflow:hidden;width:45px;height:19px;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat;text-indent:-9999px}
.minidaum_service_list li {float:left;padding:0 8px 0 7px;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat 100% -129px}
#minidaumRank .minidaum_word {float:left;margin-top:1px;padding-right:6px;line-height:15px;color:#444;white-space:nowrap;letter-spacing:-1px}
*:first-child+html #minidaumRank .minidaum_word {line-height:14px}
#minidaumRank .minidaum_rank_list {float:left;width:190px;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat 0 -407px}
#minidaumRank .minidaum_num {float:left;line-height:15px;color:#666;font-size:11px;font-family:tahoma}
#minidaumRank .minidaum_dummy {background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat 0 -407px}
#minidaumService li a {color:#444}
#minidaumService #minidaumMore {display:inline;float:left;padding:0 9px 0 7px;font-weight:bold;color:#444;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat 100% -75px}
#minidaumService .minidaum_service_list .minidaum_count {padding:0 2px 0 1px;font-weight:bold;color:#3c77eb}
#minidaumNick {padding-right:9px;line-height:17px;color:#444;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat 100% -61px}
*:first-child+html #minidaumNick {line-height:16px}
#minidaumUser.minidaum_login {padding-right:9px;margin-top:3px;line-height:16px;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat 100% -128px}
</style><style>/* minidaum common */
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
@-webkit-keyframes marqueeAnimation-4244290  { 100%  {margin-left:-100870px}}</style><script type="text/javascript" async="" src="https://m2.daumcdn.net/tiara/js/td.min.js?v=6199"></script>

      
 








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
<script charset="utf-8" type="text/javascript" src="http://s1.daumcdn.net/svc/original/U03/cssjs/minidaum/pc/minidaum-a.white.min.js"></script><style>/* minidaum common */
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
.minidaum_service_list .minidaum_new{display:inline-block;overflow:hidden;width:11px;height:12px;margin-left:3px;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat -160px -270px;text-indent:-3000px;vertical-align:bottom}
.minidaum_service_list .minidaum_count * {margin-top:0}
#minidaumMoreLayer {display:none;position:absolute;top:27px;right:0;overflow:hidden;width:449px;height:223px;font-size:12px;background:#fff none;border:1px solid #444;letter-spacing:0}
#minidaumMoreLayer.minidaumMoreLayer_open {display:block;z-index:999999}
#minidaumMoreLayer .minidaum_idx {overflow:hidden;position:absolute;top:16px;width:36px;height:13px;text-indent:-9999px}
#minidaumMoreLayer .minidaum_idx1 {left:22px;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat 0 -40px}
#minidaumMoreLayer .minidaum_idx2 {left:104px;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat -40px -40px}
#minidaumMoreLayer .minidaum_idx3 {left:194px;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat -80px -40px}
#minidaumMoreLayer .minidaum_idx4 {left:284px;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat -120px -40px}
#minidaumMoreLayer .minidaum_idx5 {left:374px;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat -160px -40px}
#minidaumMoreLayer .minidaum_list_group {float:left;width:89px;height:176px;margin-top:16px;padding-top:20px;border-left:1px solid #ebeef2}
#minidaumMoreLayer .minidaum_list_group li {float:left;overflow:hidden;width:100%;height:22px;line-height:23px;text-indent:13px}
#minidaumMoreLayer .minidaum_list_group1 li {float:left;overflow:hidden;width:100%;height:22px;line-height:23px;text-indent:21px}
#minidaumMoreLayer .minidaum_list_group li a {font-size:12px;color:#333;white-space:nowrap}
#minidaumMoreLayer .minidaum_list_group .last {height:18px}
#minidaumMoreLayer .minidaum_list_group1 {width:89px;border:none}
#minidaumMoreLayer .minidaum_list_group5 {width:86px}
#minidaumMoreLayer .minidaum_list_group .minidaum_all a {padding-right:7px;color:#5279b4;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat 100% -147px;text-decoration:underline;letter-spacing:-1px}
#minidaumMoreLayer.minidaum_custom .minidaum_idx {top:49px}
#minidaum .minidaum_custom {height:258px}
#minidaum .minidaum_custom .minidaum_list_group {margin-top:49px}
#minidaumMoreLayer .minidaum_more_custom {position:absolute;top:0;left:0;overflow:hidden;width:427px;height:33px;padding-left:22px;color:#000;background:#f5f6f8 none;border-bottom:1px solid #f0f1f3}
#minidaumMoreLayer .minidaum_more_custom a {color:#000;font-size:12px}
#minidaumMoreLayer .minidaum_more_custom li {float:left;line-height:33px;margin-right:21px}
#minidaumRank {float:left;position:relative;overflow:hidden;width:191px;height:19px;margin-top:9px;font-size:12px;letter-spacing:0}
#minidaumRank .minidaum_rank_tit {display:none;height:0;line-height:0}
#minidaumRank .minidaum_status {float:left;width:7px;height:12px;margin-right:2px;text-indent:-3000px}
#minidaumRank .minidaum_up {background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat 0 -21px}
#minidaumRank .minidaum_down {background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat -20px -21px}
#minidaumRank .minidaum_keep {background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat -40px -19px}
#minidaumRank .minidaum_new {width:22px;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat -60px -20px}
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
body {background:#fff url(http://i1.daumcdn.net/icon/minidaum/common/minibar_v03.gif) repeat-x}
#btnMinidaumLogin {float:left;overflow:hidden;width:46px;height:21px;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat -100px 0;text-indent:-9999px;vertical-align:bottom}
#minidaum .minidaum_logo {display:inline;float:left;margin:7px 15px 0 4px}
#minidaum .minidaum_logo .img_logo {display:block;overflow:hidden;width:45px;height:19px;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat;text-indent:-9999px}
.minidaum_service_list li {float:left;padding:0 8px 0 7px;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat 100% -129px}
#minidaumRank .minidaum_word {float:left;margin-top:1px;padding-right:6px;line-height:15px;color:#444;white-space:nowrap;letter-spacing:-1px}
*:first-child+html #minidaumRank .minidaum_word {line-height:14px}
#minidaumRank .minidaum_rank_list {float:left;width:190px;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat 0 -407px}
#minidaumRank .minidaum_num {float:left;line-height:15px;color:#666;font-size:11px;font-family:tahoma}
#minidaumRank .minidaum_dummy {background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat 0 -407px}
#minidaumService li a {color:#444}
#minidaumService #minidaumMore {display:inline;float:left;padding:0 9px 0 7px;font-weight:bold;color:#444;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat 100% -75px}
#minidaumService .minidaum_service_list .minidaum_count {padding:0 2px 0 1px;font-weight:bold;color:#3c77eb}
#minidaumNick {padding-right:9px;line-height:17px;color:#444;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat 100% -61px}
*:first-child+html #minidaumNick {line-height:16px}
#minidaumUser.minidaum_login {padding-right:9px;margin-top:3px;line-height:16px;background:url(http://i1.daumcdn.net/icon/minidaum/common/minidaum_v16.png) no-repeat 100% -128px}
</style></head>
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
            <h2 id="daumBody" class="screen_out">비밀번호 변경 본문</h2>

            <div class="myinfo_intro intro_modifypw">
                <span class="bg_intro"></span>

                <div class="cont_intro">
                    <h3 class="tit_comm tit_modifypw">주기적인(6개월) 비밀번호 변경을 통해 개인정보를 안전하게 보호하세요.</h3>
                </div>
            </div>
            
            
            <form id="changePasswordForm" action="updatePw.jsp" method="post">
            
                <fieldset class="fld_comm">
                    <legend class="screen_out">비밀번호 재확인 입력 폼</legend>
                    <div class="info_comm info_modifypw">
                    

                        <div class="info_detail">
                            <div class="tit_detail">
                                <strong class="txt_comm txt_pwnew">새 비밀번호</strong>
                            </div>
                            <div class="input_info">
                                <div class="bg_user bg_basic" id="passwordDiv">
                                	<label for="newPassword" class="lab_g">새 비밀번호를 입력해 주세요.</label>
                                    <input type="password" id="newPassword" name="newPassword" class="tf_g" value="">
                                    <input type="text" title="입력한 비밀번호 보기" id="textPwNew" name="textNewPassword" style="display: none" class="tf_g">
                                    <button type="button" id="passwordShow" class="btn_comm btn_view"><span class="screen_out">입력한 비밀번호 보기</span></button>
                                    
                                </div>
                                <p class="desc_add emph_notice" style="display: none"></p>
                            </div>
                        </div>
                        
                        <div class="info_detail info_break">
                            <div class="info_rule">
                                <strong class="screen_out">새 비밀번호 TIP 리스트</strong>
                                <em class="ico_comm ico_tip">TIP</em>

                                <div class="info_tip">
                                    <ul class="screen_out">
                                        <li>비밀번호는 8~32자의 영문 대/소문자, 숫자, 특수문자를 조합하여 사용하실 수 있어요!</li>
                                        <li>쉬운 비밀번호나 자주 쓰는 사이트의 비밀번호가 같을 경우,도용되기 쉬워 주기적으로변경하여 사용하는 것이 좋습니다.</li>
                                        <li>비밀번호에 특수문자를 추가하여 사용하시면 기억하기도 쉽고, 비밀번호 안전도가 높아져 도용의 위험이 줄어듭니다.</li>
                                    </ul>
                                </div>
                            </div>
                            
                        </div>
                        
                    </div>
	
                    <div class="wrap_btn">
                       
                        <button type="submit" class="btn_comm btn_save"><span class="screen_out">저장</span></button>
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
<div id="sesssionResetLayer" style="display: none">
	<div class="dimmed_layer"></div>
	<div class="userinfo_layer" style="margin-left:-188px;top:280px;"><!-- 임시스타일 -->
		<div class="inner_logout_layer">
			<div class="layer_head">
				<strong class="screen_out">로그아웃 레이어</strong>
			</div>
			<div class="layer_body">
				<div class="info_logout">
					<strong class="tit_layer">로그인 되어 있는 다른 기기를<br>모두 <span class="emph_txt">로그아웃</span> 할까요?</strong>
					<p class="txt_layer"> 비밀번호를 변경한 후 기존 비밀번호로 로그인 되어 있던 <br>다른 기기와 브러우저를 모두 로그아웃하거나 <br>새로운 비밀번호로 로그인 상태를 유지할 수 있습니다.</p>
					<div class="btn_process">
						<button type="button" class="btn_comm btn_logout"><span class="screen_out">모두 로그아웃</span></button>
						<button type="button" class="btn_comm btn_keep"><span class="screen_out">로그인 상태 유지</span></button>
					</div>	
				</div>	
				<div class="info_notice">
					<em>모두 로그아웃이란?</em>현재 브라우저를 제외한 다른 기기의 모든 로그인 상태가 해제되어 로그아웃됩니다. 변경된 비밀번호로 다시 로그인 하여야 합니다. 
					<em>로그인 상태 유지란?</em>비밀번호 변경 후에도 다른 기기의 로그인 상태가 유지됩니다. 로그아웃 후에는 변경된 비밀번호로 다시 로그인 하실 수 있습니다.	
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="content/jquery.form.validate.js"></script>
<script type="text/javascript" src="content/jquery.form.member.init.js"></script>
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