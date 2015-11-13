var map;
var marker;
var lat, lng;
var popup;
var mapLatLng = [];
var mapPath=[];
var userTourPath;
var zindex=1, index = 1;
var test;
/* function initMap(lat, lng) {//lat : -34.397   lng : 150.644
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: lat, lng: lng},
    zoom: 8
  });
} */
$(document).ready(function(){
	//지역 선택 시
	$("#areaSelect").click(function(){
		var url="svgMap.jsp";
		popup = window.open(url, "", "width=520 height=550");
		selectAreaCode(areaCode);
	});
	//출발지 선택 시
	$("#startSelect").click(function(){
		var url = "startSelect.jsp?check=y";
		popup = window.open(url,"","width=520 height=550");
		/*popup.onbeforeunload = function(){
			startAddress = document.getElementById("startPath").innerHTML;
		}*/
	});
	//콘텐츠 타입(셀렉터) 선택 시
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
//시작주소 값 넣기
function startAddressInsert(e){
	var startAddress = e;
	geocodeAddress(startAddress);
}

//콘텐츠 타입 선택 시 호출되는 Ajax
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
//콘텐츠 타입 선택시 호출되는 Ajax에서 오른쪽 리스트 추가하는 부분
function listAdd(jsonObject){
	var tableList = "";
	for(var i in jsonObject.datas){
		tableList += '<tr><td rowspan="3" class="col-lg-3"><img src="' 
			+ jsonObject.datas[i].TourSiteFirstImage+'"/></td></tr><tr><td><a href="javascript:detailPage('+ jsonObject.datas[i].TourSiteContentID +','+jsonObject.datas[i].ContentTypeID+')">'
			+ jsonObject.datas[i].TourSiteTitle+'</a><button id="'+jsonObject.datas[i].TourSiteContentID+'" class="btn btn-default addition">경로추가</button></td></tr><tr><td>'
			+ jsonObject.datas[i].TourSiteAddr+'<input class="'
			+ jsonObject.datas[i].TourSiteContentID+'" value="'+jsonObject.datas[i].TourSiteMapX+'" type="hidden"/><input class="'
			+ jsonObject.datas[i].TourSiteContentID+'" value="'+jsonObject.datas[i].TourSiteMapY+'" type="hidden"/></td></tr>';
//		tableList += '<li id=\"'+jsonObject.datas[i].TourSiteContentID+'\" class="list-group-item" value="'+ jsonObject.datas[i].TourSiteContentID+'">' + jsonObject.datas[i].TourSiteTitle + '<span class="glyphicon glyphicon-plus add" style="float:right;"></span></li>';
	}
	document.getElementById("listTable").innerHTML = tableList;
	//리스트 페이징(잘 안되고 있음)
	$('#tourList').paging({
		limit:21,
		activePage:1
	});
}
//리스트의 관광지를 클릭했을 때 나오는 상세 페이지
function detailPage(TourSiteContentID, ContentTypeID){
	var url = "mapDetailPage.jsp?contentID="+TourSiteContentID+"&contentTypeID="+ContentTypeID;
	window.open(url,"","width=520 height=550");
}

//경로추가 버튼을 클릭했을 때 실행
$(document).on('click',".addition",function(){
	var TourSiteContentID = $(this).attr("id");
	//alert(TourSiteContentID);
	requestTour(TourSiteContentID);
});
//삭제 버튼을 클릭했을 때 실행
$(document).on("click",".delete",function(){
	var listIndex = $(this).parent().prevAll().length;
	console.log(listIndex);
	deleteMarkers(listIndex);
	$(this).parent().remove();
	console.log("버튼 클릭된 곳 : "+listIndex);
	
});

//경로추가 되었을 때 실행되는 Ajax(내가 가는 여행지 목록에 추가하기 위한 검색작업)
function requestTour(TourSiteContentID){
	xhttp = new XMLHttpRequest();
	var url = "getMapXY.jsp?TourSiteContentID="+TourSiteContentID;
	xhttp.open("GET", url);
	xhttp.send();
	
	xhttp.onreadystatechange = function(){
		if(xhttp.readyState == 4 && xhttp.status == 200){
			var jsonObject = JSON.parse(xhttp.responseText);
			tourListAdd(jsonObject);
		}
	}
}
//내가가는 여행지 목록에 추가되는 부분
function tourListAdd(jsonObject){
	var UlList = '<li id="'+jsonObject.datas[0].TourSiteContentID+'" class="list-group-item" >'+jsonObject.datas[0].TourSiteTitle+'<span class="glyphicon glyphicon-remove-circle delete"></li>'
	$("#addListUl").append(UlList);
	
	//list 드래그 시 sortable(애니메이션 방식)
	$("#addListUl").sortable({
		start: function(event, ui) {
	        ui.item.startPos = ui.item.index();
	    },
	    stop: function(event, ui) {
	        console.log("Start position: " + ui.item.startPos);
	        console.log("New position: " + ui.item.index());
	    }
	});
	
	addMarker(jsonObject.datas[0].TourSiteTitle, jsonObject.datas[0].TourSiteMapX, jsonObject.datas[0].TourSiteMapY);
}
//구글맵에 마커를 전부 추가해주는 배열
function setMapOnAll(){
	for(var i=0;i<mapLatLng.length;i++){
		mapLatLng[i].setMap(map);
	}
}
function clearMarkers(){
	setMapOnAll(null);
}
//마커 삭제
function deleteMarkers(listIndex){
	clearMarkers();
	for(var i=listIndex;i<mapLatLng.length;i++){
		mapLatLng[i] = mapLatLng[i+1];
		mapPath[i] = mapPath[i+1];
	}
	mapPath.pop();
	mapLatLng.pop();
	drawLine();
	setMapOnAll();
}
//구글맵 지역이동
function moveToLocation(lat, lng){
	var center = new google.maps.LatLng(lat, lng);
	map.panTo(center);
}
//구글맵 마커 추가
function addMarker(title, lng, lat){
	var image = {
		    url: '../beachflag2.png',
		    size: new google.maps.Size(20, 32),
		    origin: new google.maps.Point(0, 0),
		    anchor: new google.maps.Point(0, 32)
		  };
	
	marker = new google.maps.Marker({
		position : {lat:Number(lat),lng:Number(lng)},
		map : map,
		icon: image,
		title: title,
		zIndex: zindex
	});
	
	mapPath.push({index:zindex , lat:Number(lat), lng:Number(lng)});
	zindex++;
	mapLatLng.push(marker);
	drawLine();
	moveToLocation(lat, lng);
}
//전체 마커 
function setMarkers(){
	var image = {
		    url: '../beachflag2.png',
		    size: new google.maps.Size(20, 32),
		    origin: new google.maps.Point(0, 0),
		    anchor: new google.maps.Point(0, 32)
	};	
	
}

//구글맵 출발지 추가
function geocodeAddress(startAddress){
	var image = {
		    url: '../beachflag.png',
		    size: new google.maps.Size(20, 32),
		    origin: new google.maps.Point(0, 0),
		    anchor: new google.maps.Point(0, 32)
		  };
	var geocoder = new google.maps.Geocoder();
	geocoder.geocode({'address' : startAddress}, function(results, status){
		if(status === google.maps.GeocoderStatus.OK){
			lat = results[0].geometry.location.lat();
			lng = results[0].geometry.location.lng();
			addMarker(startAddress, lng, lat);
			moveToLocation(lat, lng);
		}
	});
}

//구글맵 경로 선
function drawLine(){
	userTourPath = new google.maps.Polyline({
		path:mapPath,
		geodesic:true,
		strokeColor:'#FF0000',
		strokeOpacity:1.0,
		strokeWeight:2
	});
	userTourPath.setMap(map);
}

//지역 선택 시 구글맵 이동을 위한 좌표 구분
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
	}else if(areaCode == 31){//경기도
		lat = 37.415001;
		lng = 127.514834;
		moveToLocation(lat, lng);
	}else if(areaCode == 32){//강원도
		lat = 37.822581;
		lng = 128.155217;
		moveToLocation(lat, lng);
	}else if(areaCode == 33){//충북
		lat = 37.004968;
		lng = 127.675831;
		moveToLocation(lat, lng);
	}else if(areaCode == 34){//충남
		lat = 36.719458;
		lng = 126.797809;
		moveToLocation(lat, lng);
	}else if(areaCode == 35){//경북
		lat = 36.289069;
		lng = 128.891248;
		moveToLocation(lat, lng);
	}else if(areaCode == 36){//경남
		lat = 35.468862;
		lng = 128.207345;
		moveToLocation(lat, lng);
	}else if(areaCode == 37){//전북
		lat = 35.715999;
		lng = 127.156886;
		moveToLocation(lat, lng);
	}else if(areaCode == 38){//전남
		lat = 34.869954;
		lng = 126.988163;
		moveToLocation(lat, lng);
	}else if(areaCode == 39){//제주시
		lat = 33.3670949954;
		lng = 126.5217901836;
		moveToLocation(lat, lng);
	}
}

//구글맵 생성
function initMap() {
	var directionsDisplay = new google.maps.DirectionsRenderer;
	var directionsService = new google.maps.DirectionsService;
	  map = new google.maps.Map(document.getElementById('map'), {
	    center: {lat: 37.5661932511, lng: 126.9827595315},
	    zoom: 10
	  });
}
