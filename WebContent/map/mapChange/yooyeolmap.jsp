<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Bean.MapBean" %>
<%@ page import="org.json.simple.parser.*" %>
<%@ page import="org.json.simple.*" %>
<jsp:useBean id="mapDAO" class="DAO.MapDAO"></jsp:useBean>
<%
	String uri = request.getContextPath();
	request.setCharacterEncoding("UTF-8");
	String sql = "select TourSiteTitle, TourSiteMapX, TourSiteMapY from toursite where TourSiteAreaCode=? limit 0,50";
	int areaCode = 1;
	String mapList = mapDAO.mapList(sql, areaCode).toString();
	JSONParser result = null;
	JSONObject jsonObject = null;
	JSONArray jsonArray = null;
%>
<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>Complex icons</title>
    <style>
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #map {
        height: 90%;
      }
      #floating-panel {
  position: absolute;
  top: 10px;
  left: 25%;
  z-index: 5;
  background-color: #fff;
  padding: 5px;
  border: 1px solid #999;
  text-align: center;
  font-family: 'Roboto','sans-serif';
  line-height: 30px;
  padding-left: 10px;
}
    </style>
  </head>
  <body>
  <div id="floating-panel">
      <input onclick="hideMarker();" type=button value="Hide Markers">
      <input onclick="showMarker();" type=button value="Show All Markers">
    </div>
    <div id="map"></div>
    
<script>

var i=0;
function initMap() {
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 8,
    center: {lat: 37.5661932511, lng: 126.9827595315}
  });

  setMarkers(map);
}

var beaches = [
<%
	result = new JSONParser();
	jsonObject = (JSONObject)result.parse(mapList);
	jsonArray = (JSONArray)jsonObject.get("datas");
	for(int i=0;i<jsonArray.size();i++){
		JSONObject data = (JSONObject)jsonArray.get(i);
		if(i == jsonArray.size()-1){
			out.println("[\'" + data.get("TourSiteTitle") + "\', " + data.get("TourSiteMapY") + ", " + data.get("TourSiteMapX") + ", " + (i+1) + "]");
		}else{
			out.println("[\'" + data.get("TourSiteTitle") + "\', " + data.get("TourSiteMapY") + ", " + data.get("TourSiteMapX") + ", " + (i+1) + "],");
		}
	}
%>
];

function setMarkers(map) {
  var image = {
    url: '<%=uri%>/map/beachflag.png',
    size: new google.maps.Size(20, 32),
    origin: new google.maps.Point(0, 0),
    anchor: new google.maps.Point(0, 32)
  };
  var shape = {
    //coords: [1, 1, 1, 20, 18, 20, 18, 1],
    type: 'poly'
  };
  for (var i = 0; i < beaches.length; i++) {
    var beach = beaches[i];
    var marker = new google.maps.Marker({
      position: {lat: beach[1], lng: beach[2]},
      map: map,
      icon: image,
      shape: shape,
      title: beach[0],
      zIndex: beach[3]
    });
  }
}
</script>
    
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC2g9najY884bSPUcq93hp8KMQ6PVw3EZM&signed_in=true&callback=initMap"></script>
  
  </body>
</html>