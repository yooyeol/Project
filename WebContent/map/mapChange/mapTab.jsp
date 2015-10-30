<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	});
</script>
</head>
<body>
<div class="container-fluid">
	<div class="col-lg-4">
		<div id="includeMap" class="row">
			<jsp:include page="../mappingtest.jsp"></jsp:include>
			<button type="button" class="btn btn-primary" onclick="" >지역선택</button>
		</div>
		<div id="mapList" class="row">
			<ul class="sortable list">
				<li>Item 1</li>
				<li>Item 2</li>
				<li>Item 3</li>
				<li>Item 4</li>
				<li>Item 5</li>
				<li>Item 6</li>
				<li>Item 4</li>
				<li>Item 5</li>
			</ul>
		</div>
	</div>
	<div id="mapListShow" class="col-lg-4">
		mapListShow
	</div>
	<div id="mapSurrounding" class="col-lg-4">
		mapSurrounding
	</div>
</div>
</body>
</html>