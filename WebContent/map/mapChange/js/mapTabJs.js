/**
 * 
 */
var map;
var lat, lng;
var popup;
var mapTest;
/* function initMap(lat, lng) {//lat : -34.397   lng : 150.644
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: lat, lng: lng},
    zoom: 8
  });
} */
$(document).ready(function(){
	$("#areaSelect").click(function(){
		var url="svgMap.jsp";
		popup = window.open(url, "", "width=520 height=550");
	});
	$("#areaSelect").click(function(){
		//popup.onbeforeunload = function(){ // 팝업창 닫혔을 때 이벤트
			selectAreaCode(areaCode);
		//}
	});
	$("#contentType").change(function(){
		$("#listTable").contents().empty();
		if($("#contentType option:selected").val == "col0"){
			
		}else{
			var str1 = $("#areaCode").val();
			var str2 = $("#contentType option:selected").val();
			requestAjax(str1, str2);
		}
	});

});
function requestAjax(str1, str2){
	xhttp = new XMLHttpRequest();
	
	var url = "getTourList.jsp?areaCode="+str1+"&contentType="+str2;
	xhttp.open("GET",url);
	xhttp.send();
	
	xhttp.onreadystatechange = function(){
		if(xhttp.readyState == 4 && xhttp.status == 200){
			var jsonObject = JSON.parse(xhttp.responseText);
			listAdd(jsonObject);
		}
	}
}
function requestTour(TourSiteContentID){
	xhttp = new XMLHttpRequest();
	var url = "getMapXY?TourSiteContentID="+TourSiteContentID;
	xhttp.open("GET, url");
	xhttp.send();
	
	xhttp.onreadystatechange = function(){
		if(xhttp.readyState == 4 && xhttp.status == 200){
			
		}
	}
}
function listAdd(jsonObject){
	var tableList = "";
	for(var i in jsonObject.datas){
		tableList += '<tr><td rowspan="3" class="col-lg-3"><img src="' 
			+ jsonObject.datas[i].TourSiteFirstImage+'"/></td></tr><tr><td>'
			+ jsonObject.datas[i].TourSiteTitle+'<button id="'+jsonObject.datas[i].TourSiteContentID+'" class="btn btn-default addition">경로추가</button></td></tr><tr><td>'
			+ jsonObject.datas[i].TourSiteAddr+'<input class="'
			+ jsonObject.datas[i].TourSiteContentID+'" value="'+jsonObject.datas[i].TourSiteMapX+'" type="hidden"/><input class="'
			+ jsonObject.datas[i].TourSiteContentID+'" value="'+jsonObject.datas[i].TourSiteMapY+'" type="hidden"/></td></tr>';
//		tableList += '<li id=\"'+jsonObject.datas[i].TourSiteContentID+'\" class="list-group-item" value="'+ jsonObject.datas[i].TourSiteContentID+'">' + jsonObject.datas[i].TourSiteTitle + '<span class="glyphicon glyphicon-plus add" style="float:right;"></span></li>';
	}
	document.getElementById("listTable").innerHTML = tableList;
	$(".btn btn-default addition").click(function(){
		alert("test");
		mapTest = $(this);
	});
	$('#tourList').paging({
		limit:24,
		activePage:1
	});
}
function addList(){
	alert(mapTest);
}

function moveToLocation(lat, lng){
	var center = new google.maps.LatLng(lat, lng);
	map.panTo(center);
}

function selectAreaCode(areaCode){
	if(areaCode == 1){//서울특별시
		lat = 37.5661932511;
		lng = 126.9827595315;
		moveToLocation(lat, lng);
	}else if(areaCode == 2){//인천시
		lat = 37.4560288869;
		lng = 126.7052712518;
		moveToLocation(lat, lng);
	}else if(areaCode == 3){//대전시
		lat = 36.3501295405;
		lng = 127.3845680759;
		moveToLocation(lat, lng);
	}else if(areaCode == 4){//대구시
		lat = 35.8715532513;
		lng = 128.6013343342;
		moveToLocation(lat, lng);
	}else if(areaCode == 5){//광주시
		lat = 35.1600389352;
		lng = 126.8513270569;
		moveToLocation(lat, lng);
	}else if(areaCode == 6){//부산시
		lat = 35.1801176349;
		lng = 129.0747147680;
		moveToLocation(lat, lng);
	}else if(areaCode == 7){//울산시
		lat = 35.5384735014;
		lng = 129.3114258526;
		moveToLocation(lat, lng);
	}else if(areaCode == 8){//세종시
		lat = 36.5928362030;
		lng = 127.2923752824;
		moveToLocation(lat, lng);
	}else if(areaCode == 31){
		
		moveToLocation(lat, lng);
	}else if(areaCode == 32){
	
		moveToLocation(lat, lng);
	}else if(areaCode == 33){
		
		moveToLocation(lat, lng);
	}else if(areaCode == 34){
		
		moveToLocation(lat, lng);
	}else if(areaCode == 35){
		
		moveToLocation(lat, lng);
	}else if(areaCode == 36){
		
		moveToLocation(lat, lng);
	}else if(areaCode == 37){
		
		moveToLocation(lat, lng);
	}else if(areaCode == 38){
		
		moveToLocation(lat, lng);
	}else if(areaCode == 39){//제주시
		lat = 33.3670949954;
		lng = 126.5217901836;
		moveToLocation(lat, lng);
	}
}

function initMap() {
	  map = new google.maps.Map(document.getElementById('map'), {
	    center: {lat: -34.397, lng: 150.644},
	    zoom: 11
	  });
}