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
<script src="js/jquery.sortable.js"></script>
<style>
	#label{
		text-align:center;
		margin:auto;
		padding:10px;
	}
	#includeMap{
		height:50%;
		padding:10px;
	}
	#mapList{
		height:50%;
		padding:10px;
	}
	#mapListShow{
		padding:10px;
	}
	#mapSurrounding{
		padding:10px;
	}
	.delete{
		float:right;
	}
</style>
<script>
	$(document).ready(function(){
		$('.sortable').sortable();
		
		$("#contentType").change(function() {
	        if($("#contentType option:selected").val() == "col0"){
		        $("#h1").text("검색 결과가 없습니다.");
	        }else{
	        	var str1;
	        	var str2;
	        	xhttp = new XMLHttpRequest();
	        	xhttp.onreadystatechange = function() {
	        	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	        	      document.getElementById("txtHint").innerHTML = xhttp.responseText;
	        	    }
	        	  }
	        	xhttp.open("GET", "getTourList.jsp?areaCode="+str1+"&contentType="+str2, true);
	        	xhttp.send();
	        }
	        
	    });
		$("#areaSelect").click(function(){
			var url="<%=uri%>/map/mapChange/svgMap.jsp";
			window.open(url, "","width=520 height=550");
		});
		$(".delete").click(function(){
			$(this).parent().remove();
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
			<ul class="sortable list list-group">
				<li class="list-group-item">
				출발지
				<span class="glyphicon glyphicon-remove-circle delete"></span> 
				</li>
				<li class="list-group-item">
				Item 2
				<span class="glyphicon glyphicon-remove-circle delete"></span>
				</li>
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
					<input id="areaCode" type="text" name="areaCode" class="form-control" disabled>
					<!-- 나중에 type="hidden"으로 바꾸기 -->
				</div>
				<div class="col-lg-2">
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
			</form>
		</div>
		<div class="row">
			<div id="mapListShow" class="col-lg-4">
				<h1 id="h1"></h1>
			</div>
			<div id="mapSurrounding" class="col-lg-4">
				mapSurrounding
			</div>
		</div>
	</div>
</div>
</body>
</html>