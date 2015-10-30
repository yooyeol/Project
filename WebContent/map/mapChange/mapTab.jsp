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
  <style>
  	#includeMap{
  		height:50%;
  		border:1px solid black;
  		padding:10px;
  	}
  	#mapList{
  		height:50%;
  		border:1px solid black;
  	}
  	#mapListShow{
  		height:100%;
  		border:1px solid black;
  	}
  	#mapSurrounding{
  		height:100%;
  		border:1px solid black;
  	}
  </style>
</head>
<body>
<div class="container-fluid">
	<div class="col-lg-4">
		<div id="includeMap" class="row">
			<jsp:include page="../mappingtest.jsp"></jsp:include>
		</div>
		<div id="mapList" class="row">
			mapList
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