<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="Bean.MapBean" %>
<%@ page import="java.util.Vector" %>
<jsp:useBean id="mapDAO" class="DAO.MapDAO"></jsp:useBean>
<%
	String uri = request.getContextPath();
	request.setCharacterEncoding("UTF-8");
	String sql = "select TourSiteTitle, TourSiteMapX, TourSiteMapY from toursite where TourSiteAreaCode=? limit 0,50";
	int areaCode = 1;
	Vector<MapBean> mapList = mapDAO.mapList(sql, areaCode);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>여행경로 구성</title>
<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet"	href="http://code.jquery.com/qunit/qunit-1.13.0.css">

<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="js/jquery.sortable.js"></script>
<script type="text/javascript" src="js/jquery.twbsPagination.js"></script>
<style>
#label {
	text-align: center;
	margin: auto;
	padding: 10px;
}

#includeMap {
	height: 50%;
	padding: 10px;
}

#mapList {
	height: 50%;
	padding: 10px;
}

#mapListShow {
	padding: 10px;
}

#mapSurrounding {
	padding: 10px;
}

.delete {
	float: right;
}
li:hover{
	cursor:pointer;
	border:1px solid;
}
.list-group-item{
	margin-top:10px;
	margin-bottom: 10px;
}
.page_navigation a, .alt_page_navigation a{
	padding:3px 5px;
	margin:2px;
	color:white;
	text-decoration:none;
	float: left;
	font-family: Tahoma;
	font-size: 12px;
	background-color:#DB5C04;
}
.active_page{
	background-color:white !important;
	color:black !important;
}	
#map {
        height: 500px;
        width:500px;
}
</style>
<script type="text/javascript">
var test;
var change;
$(document).ready(function(){
	change = $("#contentType").change(function(){
		
	});
		$("#contentType").change(function() {
	        if($("#contentType option:selected").val() == "col0"){
				
	        }else{
	        	$("#mapListShowUl").contents().remove();
	        	$('#pagination').twbsPagination({
		            totalPages: 35,
		            visiblePages: 5,
		            onPageClick: function (event, page) {
		            	//페이지 시작
		            	
						var str1 = $("#areaCode").val();
    		    		var str2 = $("#contentType option:selected").val();
    		   			xhttp = new XMLHttpRequest();
    		        	
    		    		xhttp.onreadystatechange = function() {
    		    			if (xhttp.readyState == 4 && xhttp.status == 200) {
    		    				var jsonObject = JSON.parse(xhttp.responseText);

    		    				var list = listAdd(jsonObject);
						
    		       				document.getElementById("mapListShowUl").innerHTML = list;
    		        
    		        			$(".connected").sortable({
    								connectWith:'.connected'
    							});
    		        	    	
    		        			$(".delete").click(function(){
    		        				$(this).parent().remove();
    		        			});
    		        	
    		        			$(".list-group-item").click(function(){
    		        				var url = "detailPage.jsp?value="+$(this).attr("value");
    		        				window.open(url,"","width=520 height=550");
    		        			});
    		        
    		        		}
    		    		}
    		        		xhttp.open("GET", "getTourList.jsp?areaCode="+str1+"&contentType="+str2 + "&paging="+page, true);
    		        		xhttp.send();
		            
		            	
		            }//페이지 끝
		        });//pagination 끝
	        	
	        }//else
	    });
		
		$("#areaSelect").click(function(){
			var url="<%=uri%>/map/mapChange/svgMap.jsp";
			window.open(url, "", "width=520 height=550");
		});
		
		$("#startSelect").click(function(){
			var url = "<%=uri%>/map/mapChange/startSelect.jsp?check=y";
			window.open(url,"","width=520 height=550");
		});
});

var map;
function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: -34.397, lng: 150.644},
    zoom: 8
  });
}

function listAdd(jsonObject){
	var list
	for(var i in jsonObject.datas){
		list += '<li id=\"'+jsonObject.datas[i].TourSiteContentID+'\" class="list-group-item" value="'+ jsonObject.datas[i].TourSiteContentID+'">' + jsonObject.datas[i].TourSiteTitle + '<span class="glyphicon glyphicon-remove-circle delete"></span></li>';
	}
	return list;
}
</script>
</head>
<body>
	<div class="container-fluid">
		<div class="col-lg-4">
			<div id="includeMap" class="row">
				<div id="map"></div>
				<!-- 구글맵 자바스크립트 시작 -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC2g9najY884bSPUcq93hp8KMQ6PVw3EZM&callback=initMap"></script>
       			<!-- 구글맵 자바스크립트 끝 -->
			</div>
			<div class="row">
				<button id="areaSelect" type="button" class="btn btn-primary">지역선택</button>
				<button id="startSelect" type="button" class="btn btn-primary">출발지 입력</button>
			</div>
			<div id="mapList" class="row">
			<form name="pathFrm" method="post" action="">
				<ul id="tourPath" class="sortable list list-group connected">
					<li id="startPath" class="list-group-item disabled">출발지</span>
					</li>
				</ul>
			</form>	
			</div>
		</div>
		<div class="col-lg-8">
			<div class="row">
				<div id="label" class="col-lg-1">
					<label>테마 검색</label>
				</div>
				<form name="mapFrm" method="post">
					<div class="col-lg-1">
						<input id="areaCode" name="areaCode" class="form-control" type="hidden">
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
				<ul id="pagination" class="pagination-sm"></ul>
				<div id="mapListShow" class="container col-lg-4">
					<br/>
					<label id="page-content"></label>
					<ul id="mapListShowUl" class="content list list-group connected">

					</ul>
				</div>
				<div id="mapSurrounding" class="col-lg-4">mapSurrounding
					<label id="test"></label>
				</div>
			</div>
		</div>
	</div>
</body>
</html>