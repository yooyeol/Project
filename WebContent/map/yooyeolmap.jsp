<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Bean.MapBean" %>
<%@ page import="java.util.Vector" %>
<jsp:useBean id="mapDAO" class="DAO.MapDAO"></jsp:useBean>
<%
	request.setCharacterEncoding("UTF-8");
	String sql = "select TourSiteTitle, TourSiteMapX, TourSiteMapY from toursite where TourSiteAreaCode=?";
	int areaCode = 1;
	Vector<MapBean> mapList = mapDAO.mapList(sql, areaCode);
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
        height: 100%;
      }
    </style>
  </head>
  <body>
    <div id="map"></div>
    
<script>

var i=0;
function initMap() {
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 8,
    center: {lat: 37, lng: 127}
  });

  setMarkers(map);
}

var beaches = [
<%
	for(int i=0;i<mapList.size();i++){
		MapBean bean = mapList.get(i);
		String rTitle = bean.getTourSiteTitle();
		Double rX = bean.getTourSiteMapX();
		Double rY = bean.getTourSiteMapY();
		
		if(i == mapList.size()-1){
			out.println("[\'" + rTitle + "\', " + rY + ", " + rX + ", " + (i+1) + "]");
		}else{
			out.println("[\'" + rTitle + "\', " + rY + ", " + rX + ", " + (i+1) + "],");
		}
	}
%>
];

function setMarkers(map) {
  var image = {
    url: 'beachflag.png',
    size: new google.maps.Size(20, 32),
    origin: new google.maps.Point(0, 0),
    anchor: new google.maps.Point(0, 32)
  };
  var shape = {
    coords: [1, 1, 1, 20, 18, 20, 18, 1],
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