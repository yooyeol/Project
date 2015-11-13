<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>

<%@page import="java.util.*"%>

<%
	String uri = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko" hola_ext_inject="disabled"><head>

   


    <meta charset="utf-8">
    <title>내정보 관리 </title>
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
</style><script type="text/javascript" async="" src="https://m2.daumcdn.net/tiara/js/td.min.js?v=6199"></script><script charset="utf-8" type="text/javascript" src="http://s1.daumcdn.net/svc/original/U03/cssjs/minidaum/pc/minidaum-a.white.min.js"></script><style>/* minidaum common */
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
</style><script type="text/javascript" async="" src="http://m2.daumcdn.net/tiara/js/td.min.js?v=6199"></script></head>
      
 








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

<body>
	<!-- header-section-starts-here -->
	


	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="header">
		<div class="header-top">
			<div class="wrap">
				
				<div class="num">
					<p> Call us : 032 2352 782</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="header-bottom">
			<div class="logo text-center">
			
		
			
				<a href="main.jsp"><img src="<%=uri %>/demo/images/mainLogo.jpg" alt="" /></a> 
				<div class="memberStatus" style="float: right;margin:5px;">
			<h4><%=session.getAttribute("idKey") %>님. 환영합니다.<h4>
			</div>
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
						<li ><a href="course.jsp">GO TRAVELING</a></li>
				 		<li ><a href="notify.jsp">공지사항</a></li>
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



	<!-- content-section-starts-here -->
	<div class="main-body">
		<div class="wrap">
			
<div class="col-md-8 content-left">
				

<div id="daumWrap" class="userinfo_type1 ">
    <div id="daumIndex"> <!-- 웹접근성용 바로가기 링크 모음 -->
    <a href="#daumBody">본문 바로가기</a>
    <a href="#daumGnb">메뉴 바로가기</a>
</div>



        <hr class="hide">

<div id="daumContent" role="main" class="cont_home">		
			<div id="mArticle">
							<h2 id="daumBody" class="screen_out">내정보 관리 본문</h2>
											<div class="section_my">
	<h3 class="tit_comm tit_manage">내 정보를 최신 정보로 관리해 주세요.</h3>
	<p class="tit_comm desc_manage">아이디/비밀번호 분실 및 보호조치 해제를 위해 최신 정보로 내정보를 관리하세요.</p>
</div>

 
<%
		String id = session.getAttribute("idKey").toString();
		
		
		String sql = "select memberEmail,MemberName,memberTel,memberZipCode,memberAddr from member where memberEmail=?";
		

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		} catch (ClassNotFoundException e) {
			out.println("class not found");
		} catch (Exception etc) {
			out.println("etc exception");
			out.println(etc.getMessage());
		}
		try {

			String url = "jdbc:mysql://kitri.iptime.org:3306/eztour?useUnicode=true&characterEncoding=UTF-8";
			String userId = "root";
			String userPass = "root";

			conn = DriverManager.getConnection(url, userId, userPass);


			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
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
			<dd class="desc_myinfo emph_myinfo"><%=subemail %></dd>
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
            
                <span class="contact_info"><span class="ico_comm ico_phone">핸드폰 번호</span>
                                                            <%=subphone%>
                                            
                <button type="button" id="changePhoneBtn" class="btn_comm btn_change"><span class="screen_out">변경</span></button>
            </dd>
            <form id="nicknameForm" action="updatePhone.jsp" method="post">
                <dd id="phoneChangeDiv" class="desc_myinfo" style="display: none">
                    <div class="area_nickname">
                        <input type="text" id="daumname" name="memberPhone" class="tf_f" value="">
                        <span id="daumnamePlaceHolder" class="lab_nick screen_out">핸드폰 번호를 입력해주세요. </span>
                    </div>
                    <button type="submit" class="btn_comm btn_save"><span class="screen_out">저장</span></button>
                    <button type="button" id="changePhoneCancelBtn" class="btn_comm btn_cancle"><span class="screen_out">취소</span></button>
                   
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
			<span class="contact_info"><span class=""></span>
               <%=subaddr1 %><br><%=subaddr2 %>
                
                <button type="button" id="changeAddrBtn" class="btn_comm btn_change" onClick="zipCheck()" ><span class="screen_out">변경</span></button>
                
           </dd>
           <form name="regFrm" id="defaultForm" method="post" class="form-horizontal fv-form fv-form-bootstrap" action="updateAddr.jsp" novalidate="novalidate"><button type="submit" class="fv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button><button type="submit" class="fv-hidden-submit disabled" style="display: none; width: 0px; height: 0px;" disabled="disabled"></button>
            
                <dd id="addrChangeDiv" class="desc_myinfo" style="display: none">
                    <div class="area_nickname">
                        <input type="text" id="addr1" name="memberZipCode" name="daumname" value="<%=subaddr1 %>"  class="tf_g" >
                        <input type="text" id="addr2" name="memberAddr"  name="daumname" value="<%=subaddr2 %>"  class="tf_h">

                        <span id="daumnamePlaceHolder" class="lab_nick screen_out">주소를 입력해주세요. </span>
                    </div>
                    
                 	

                    
                    <button type="submit" class="btn_comm btn_save"><span class="screen_out">저장</span></button>
                    <button type="button" id="changeAddrCancelBtn" class="btn_comm btn_cancle"><span class="screen_out">취소</span></button>
                   
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

			</div><!--// mArticle -->
							<div id="mAside">
	
</div><!--// mAside -->					</div><!-- // cMain -->		
	</div>












<!-- 로그인 아이디 삭제 레이어 -->
<div id="loginIdDeleteLayer" style="display:none;">
	<form id="removeLoginIdForm" action="/my/emailid.daum" method="post">
	<div class="dimmed_layer"></div>
	<div class="userinfo_layer" style="margin-left:-188px;top:280px;">
		<div class="inner_myinfo_layer">
			<div class="layer_head">
				<strong class="screen_out">내정보 관리 안내 레이어</strong>
			</div>
			<div class="layer_body">
				<strong class="tit_layer"><span id="deleteType">이메일</span> 아이디 <em id="loginIdConfirm" class="emph_info"></em> (을)를 삭제하시겠습니까?<br>삭제 후에는 <span id="deleteContact">휴대폰 번호</span>가 즉시 파기됩니다.</strong>
				<div class="btn_process">
					<button type="submit" class="btn_comm btn_ok"><span class="screen_out">확인</span></button>
					<button type="button" id="deleteLoginIdCancel" class="btn_comm btn_cancel"><span class="screen_out">취소</span></button>
				</div>
			</div>
			<div class="layer_foot">
				<button id="loginIdLayerClosebtn" type="button" class="btn_comm btn_close">닫기</button>
			</div>
		</div>
	</div>
	<input type="hidden" id="removeLoginIdType" name="type">
	<input type="hidden" name="action" value="delete">
	<input type="hidden" name="PAGEID" value="9da6">		
	</form>	<!-- // daumContent -->
</div>


<!-- SNS disconnect 레이어 -->
<div id="disconnectSnsLayer" style="display: none">
    <div class="dimmed_layer"></div>
    <div class="userinfo_layer" style="margin-left:-188px;top:280px;">
        <div class="inner_myinfo_layer">
            <div class="layer_head">
                <strong class="screen_out">내정보 관리 안내 레이어</strong>
            </div>
            <div class="layer_body">
                <strong class="tit_layer"><em class="emph_info"></em> 연결을 해제하시겠습니까?<br>연결 해제 시 이용하시는 모든 연동기능 서비스도 함께 해제됩니다</strong>

                <div class="btn_process">
                    <button type="button" id="disconnectSns" class="btn_comm btn_ok"><span class="screen_out">확인</span></button>
                    <button type="button" id="disconnectSnsLayerCancel" class="btn_comm btn_cancel"><span class="screen_out">취소</span></button>
                </div>
            </div>
            <div class="layer_foot">
                <button type="button" id="disconnectSnsLayerCloseBtn" class="btn_comm btn_close">닫기</button>
            </div>
        </div>
    </div>
</div>

<div id="mobileDeleteLayer" style="display: none">
    <div class="dimmed_layer"></div>
    <div class="userinfo_layer" style="margin-left:-188px;top:280px;">
        <div class="inner_myinfo_layer">
            <div class="layer_head">
                <strong class="screen_out">휴대폰 번호 삭제 알림 레이어</strong>
            </div>
            <div class="layer_body">
                <strong class="tit_layer">휴대폰 번호 <em class="emph_info">010-8***-***6</em>(을)를<br>삭제하시겠습니까?<br>삭제 후에는 휴대폰 번호가 즉시 파기됩니다.</strong>
                <div class="btn_process">
                    <button type="button" id="mobileDeleteOkBtn" class="btn_comm btn_ok"><span class="screen_out">확인</span></button>
                    <button type="button" id="mobileDeleteCancelBtn" class="btn_comm btn_cancel"><span class="screen_out">취소</span></button>
                </div>
            </div>
            <div class="layer_foot">
                <button type="button" id="mobileDeleteCloseBtn" class="btn_comm btn_close">닫기</button>
            </div>
        </div>
    </div>
</div>

<div id="othermailDeleteLayer" style="display: none">
    <div class="dimmed_layer"></div>
            <div class="userinfo_layer" style="margin-left:-188px;top:280px;">
            <div class="inner_myinfo_layer">
                <div class="layer_head">
                    <strong class="screen_out">이메일 주소 삭제 알림 레이어</strong>
                </div>
                <div class="layer_body">
                    <strong class="tit_layer">이메일 주소<em class="emph_info"> ca******@na******.com</em><br>(을)를 삭제하시겠습니까?<br>삭제 후에는 이메일 주소가 즉시 파기됩니다.</strong><!-- 2015-09-25 수정 -->
                    <div class="btn_process">
                        <button type="button" id="othermailDeleteOkBtn" class="btn_comm btn_ok"><span class="screen_out">확인</span></button>
                        <button type="button" id="othermailDeleteCancelBtn" class="btn_comm btn_cancel"><span class="screen_out">취소</span></button>
                    </div>
                </div>
                <div class="layer_foot">
                    <button type="button" id="othermailDeleteCloseBtn" class="btn_comm btn_close">닫기</button>
                </div>
            </div>
        </div>
    </div>

<div id="deleteInfoLayer" style="display: none">
    <div class="dimmed_layer"></div>
    <div class="userinfo_layer" style="margin-left:-188px;top:280px;">
        <div class="inner_myinfo_layer">
            <div class="layer_head">
                <strong class="screen_out">삭제 안내 레이어</strong>
            </div>
            <div class="layer_body">
                <strong class="tit_layer">휴대폰 또는 이메일 중 1개는 반드시 등록해야 합니다.<br>다른 연락처를 등록한 후 삭제해 주세요.</strong>
                <div class="btn_process">
                    <button type="button" id="deleteInfoOkBtn" class="btn_comm btn_ok"><span class="screen_out">확인</span></button>
                </div>
            </div>
            <div class="layer_foot">
                <button type="button" id="deleteInfoCloseBtn" class="btn_comm btn_close">닫기</button>
            </div>
        </div>
    </div>
</div>
<form id="removeMobileForm" action="https://member.daum.net/change/mobile.daum?action=remove" method="post">

</form>

<form id="removeOthermailForm" action="https://member.daum.net/change/email.daum?action=remove" method="post">

</form>


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

<script type="text/javascript" src="content/jquery.form.validate.js"></script>
<script type="text/javascript" src="content/jquery.form.member.init.js"></script>
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
        var errorList = validator.getFormErrorList();
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
		$().UItoTop({ easingType: 'easeOutQuart' });
});
</script>
<a href="#to-top" id="toTop" style="display: none;"><span id="toTopHover"></span><span id="toTopHover"></span><span id="toTopHover"></span> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!---->

<a href="#" id="toTop">To Top</a><a href="#" id="toTop">To Top</a><a href="#" id="toTop">To Top</a></body></html>