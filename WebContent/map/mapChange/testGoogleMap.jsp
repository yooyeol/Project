<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
<!DOCTYPE html>
<html>
  <head>
    <title>Remove Markers</title>
    <style>
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #map {
        height: 100%;
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
      <input onmouseover="clearMarkers();" type=button value="Hide Markers">
      <input onmouseover="showMarkers();" type=button value="Show All Markers">
      <input onclick="deleteMarkers();" type=button value="Delete Markers">
    </div>
    <div id="map"></div>
    <p>Click on the map to add markers.</p>
    <script>
// In the following example, markers appear when the user clicks on the map.
// The markers are stored in an array.
// The user can then click an option to hide, show or delete the markers.
var map;
var markers = [
               
<%for (int i = 0; i < mapList.size(); i++) {
				MapBean bean = mapList.get(i);
				String rTitle = bean.getTourSiteTitle();
				Double rX = bean.getTourSiteMapX();
				Double rY = bean.getTourSiteMapY();

				if (i == mapList.size() - 1) {
					out.println("[\'" + rTitle + "\', " + rY + ", " + rX + ", " + (i + 1) + "]");
				} else {
					out.println("[\'" + rTitle + "\', " + rY + ", " + rX + ", " + (i + 1) + "],");
				}
			}%>
               
               ];

function initMap() {
  var haightAshbury = {lat: 37.769, lng: -122.446};

  map = new google.maps.Map(document.getElementById('map'), {
    zoom: 8,
    center: haightAshbury,
  });

  // This event listener will call addMarker() when the map is clicked.
  map.addListener('click', function(event) {
    addMarker(event.latLng);
  });

  // Adds a marker at the center of the map.
  addMarker(haightAshbury);
}

// Adds a marker to the map and push to the array.
function addMarker(location) {
	var image = {
		    url: '<%=uri%>/map/beachflag.png',
		    size: new google.maps.Size(20, 32),
		    origin: new google.maps.Point(0, 0),
		    anchor: new google.maps.Point(0, 32)
		  };
	var shape = {
		    coords: [1, 1, 1, 20, 18, 20, 18, 1],
		    type: 'poly'
		  };
	for(var i=0;i<markers.length;i++){
		var mark = markers[i]
		var marker = new google.maps.Marker({
		    position: {lat:mark[1], lng:mark[2]},
		    map: map,
		    icon:image,
		    shape:shape,
		    title:mark[0],
		    zIndex:mark[3]
		  });
	}
	var marker = new google.maps.Marker({
	    position: location,
	    map: map,
	    icon:image,
	    shape:shape
	  });
  markers.push(marker);
}

// Sets the map on all markers in the array.
function setMapOnAll(map) {
  for (var i = 0; i < markers.length; i++) {
    markers[i].setMap(map);
  }
}

// Removes the markers from the map, but keeps them in the array.
function clearMarkers() {
  setMapOnAll(null);
}

// Shows any markers currently in the array.
function showMarkers() {
  setMapOnAll(map);
}

// Deletes all markers in the array by removing references to them.
function deleteMarkers() {
  clearMarkers();
  markers = [];
}

    </script>
    <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC2g9najY884bSPUcq93hp8KMQ6PVw3EZM&signed_in=true&callback=initMap"></script>
  </body>
</html>