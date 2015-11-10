<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String uri = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>경로 설정하기</title>
<link rel="stylesheet" href="<%=uri%>/map/mapChange/style.css"/>
<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="<%=uri%>/map/mapChange/js/mapTabJs.js"></script>
<script src="<%=uri%>/map/mapChange/js/paging.js"></script>

</head>
<body>
<label id="test"></label>
	<div class="container-fluid">
		<div class="row">
			헤더
		</div>
		<div class="row">
			<div class="col-lg-6">
				<div class="row">
					<div id="map">지역을 먼저 선택해 주세요.</div>
					<div id="right-panel"></div>
				</div>
				<div class="row" align="center">
				<br/>
					<div class="col-lg-3">
						<button id="areaSelect" type="button" class="btn btn-danger">지역선택</button>
					</div>
					<div class="col-lg-3">
						<button id="startSelect" type="button" class="btn btn-danger">출발지 입력</button>
					</div>
					<div class="col-lg-4">
						<select class="form-control" name="contentType" id="contentType">
							<option value="col0">타입 선택</option>
							<option value="12">관광지</option>
							<option value="14">문화시설</option>
							<option value="15">축제공연행사</option>
							<option value="25">여행코스</option>
							<option value="28">레포츠</option>
							<option value="32">숙박</option>
							<option value="38">쇼핑</option>
							<option value="39">음식점</option>
						</select>
					</div>
				</div>
				<div class="row">
				<br/>
				<form method="post" action="">
					<ol id="addListUl" class="list-group">
						<li id="startPath" class="list-group-item disabled">출발지</li>
					</ol>
					<button type="submit" class="btn btn-danger">경로 저장하기</button>
					<p id="test"></p>
				</form>
				</div>
			</div>
			<div class="col-lg-6">
			<div class="pagination">
				
			</div>
				<table id="tourList" class="table table-bordered table-hover ">
					<thead>
						<tr>
							<th colspan="3">여행지</th>
						</tr>
					</thead>
					<tbody id="listTable">
						<tr>
							<td rowspan="3" class="col-lg-3">1*1</td>
						</tr>
						<tr>
							<td>테스트<span class="glyphicon glyphicon-plus addition"></span></td>
						</tr>
						<tr>
							<td>주소</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="row">
			푸터
		</div>
	</div>
	<form name="mapFrm">
		<input id="areaCode" name="areaCode" class="form-control" type="hidden">
	</form>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC2g9najY884bSPUcq93hp8KMQ6PVw3EZM&callback=initMap"></script><!-- 구글맵 자바스크립트 끝 -->
</body>
</html>
