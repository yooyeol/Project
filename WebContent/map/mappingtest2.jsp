<%@page import="java.sql.*"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="org.json.simple.parser.ParseException"%>
<%@page import="DAO.*"%>
<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8"%>

<!DOCTYPE html>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>

</head>

<body>

<!-- GoogoleMap Asynchronously Loading the API ********************************************* -->
<script type="text/javascript">
      function initialize() {
        var mapLocation = new google.maps.LatLng('36.322473', '127.412501'); // 지도에서 가운데로 위치할 위도와 경도
        var markLocation = new google.maps.LatLng('36.322473', '127.412501'); // 마커가 위치할 위도와 경도
         
        var mapOptions = {
          center: mapLocation, // 지도에서 가운데로 위치할 위도와 경도(변수)
          zoom: 18, // 지도 zoom단계
          mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("map-canvas"), // id: map-canvas, body에 있는 div태그의 id와 같아야 함
            mapOptions);
         
        // 마커로 사용할 이미지 주소
			var image = {
				url : 'beachflag.png',
				size : new google.maps.Size(20, 32),
				origin : new google.maps.Point(0, 0),
				anchor : new google.maps.Point(0, 32)
			};
         
        var marker;
        marker = new google.maps.Marker({
               position: markLocation, // 마커가 위치할 위도와 경도(변수)
               map: map,
               icon: image, // 마커로 사용할 이미지(변수)
        });
     
        }
      google.maps.event.addDomListener(window, 'load', initialize);
</script>

	<div id="map-canvas" style="width: 100%; height: 920px"></div>
</body>
</html>