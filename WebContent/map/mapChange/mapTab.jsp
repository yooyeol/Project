<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String uri = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>맵 탭</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="jquery.sortable.js"></script>
<style>
	#label{
		text-align:center;
		margin:auto;
		padding:10px;
	}
	li{
		list-style:none;
		border:1px solid black;
		margin:5px;
		height:40px;
	}
	#includeMap{
		height:50%;
		padding:10px;
	}
	#mapList{
		border:1px solid black;
		height:50%;
		padding:10px;
	}
	#mapListShow{
		padding:10px;
	}
	#mapSurrounding{
		padding:10px;
	}
</style>
<script>
	$(document).ready(function(){
		$('.sortable').sortable();
		
		$("#categoryCode1").children('option:gt(0)').hide();
	    
		$("#content_select").change(function() {
	    	$("#categoryCode1").val("col0");
	        $("#categoryCode1").children('option').hide();
	        $("#categoryCode1").children("option[value^=" + $(this).val() + "]").show();
	        //$("#h2").text($("#content_select option:selected").val());
	    });
		$("#areaSelect").click(function(){
			var url="<%=uri%>/map/mapChange/svgMap.jsp";
			window.open(url, "","width=520 height=550");
		});
	});
</script>
</head>
<body>
<div class="container-fluid">
	<div class="col-lg-4">
		<div id="includeMap" class="row">
			<jsp:include page="../mappingtest.jsp"></jsp:include>
			<button id="areaSelect" type="button" class="btn btn-primary">지역선택</button>
		</div>
		<div id="mapList" class="row">
			<ul class="sortable list">
				<li>Item 1</li>
				<li>Item 2</li>
				<li>Item 3</li>
				<li>Item 4</li>
				<li>Item 5</li>
				<li>Item 6</li>
				<li>Item 7</li>
				<li>Item 8</li>
				<li>Item 9</li>
				<li>Item 10</li>
				<li>Item 11</li>
				<li>Item 12</li>
				<li>Item 13</li>
			</ul>
		</div>
	</div>
	<div class="col-lg-8">
		<div class="row">
			<div id="label" class="col-lg-1">
				<label>테마 검색</label>
			</div>
			<form name="mapFrm" method="post">
				<div class="col-lg-1">
					<input type="text" name="areaCode" class="form-control">
					<!-- 나중에 type="hidden"으로 바꾸기 -->
				</div>
				<div class="col-lg-2">
				<select class="form-control" name="content_select" id="content_select">	
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
			<div class="col-lg-2">
				<select class="form-control" name="categoryCode1" id="categoryCode1">
					<!--기본 분류-->
					<option value="col0">대분류</option>

					<!--관광지 선택 시-->
					<option value="12_A01">자연</option>
					<option value="12_A02">인문(문화/예술/역사)</option>

					<!--문화시설 선택 시-->
					<option value="14_A02">인문(문화/예술/역사)</option>
		
					<!-- 축제공연행사 선택 시 -->
					<option value="15_A02">인문(문화/예술/역사)</option>
		
					<!-- 여행코스 선택 시 -->
					<option value="25_C01">추천코스</option>
		
					<!-- 레포츠 선택 시 -->
					<option value="28_A03">레포츠</option>
		
					<!-- 숙박 선택 시 -->
					<option value="32_B02">숙박</option>
		
					<!-- 쇼핑 선택 시 -->
					<option value="38_A04">쇼핑</option>
		
					<!-- 음식점 선택 시 -->
					<option value="39_A05">음식</option>
				</select>
			</div>
			</form>
		</div>
		<div class="row">
			<div id="mapListShow" class="col-lg-4">
				mapListShow
			</div>
			<div id="mapSurrounding" class="col-lg-4">
				mapSurrounding
			</div>
		</div>
	</div>
</div>
</body>
</html>