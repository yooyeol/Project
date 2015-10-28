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

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>제발좀 나와라</title>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>

</head>

<body>
	
	<!-- GoogoleMap Asynchronously Loading the API ********************************************* -->
	<script type="text/javascript">
	var x = "37.4837121";
	var y = "127.0324112";
	//전국에 대한 중심 좌표(지도 중심 좌표 설정-변경 해도 됨)
		function initialize() {

			var mapLocation = new google.maps.LatLng(x, y); // 지도에서 가운데로 위치할 위도와 경도
			var markLocation = null; // 마커가 위치할 위도와 경도

			var mapOptions = {
				center : mapLocation, // 지도에서 가운데로 위치할 위도와 경도(변수)
				zoom : 8, // 지도 zoom단계
				mapTypeId : google.maps.MapTypeId.ROADMAP
			};
			var map = new google.maps.Map(document.getElementById("map-canvas"), // id: map-canvas, body에 있는 div태그의 id와 같아야 함
					mapOptions);

			var size_x = 10; // 마커로 사용할 이미지의 가로 크기
			var size_y = 10; // 마커로 사용할 이미지의 세로 크기

			// 마커로 사용할 이미지 주소
			var image = new google.maps.MarkerImage(
					'http://www.larva.re.kr/home/img/boximage3.png',
					new google.maps.Size(size_x, size_y), '', '',
					new google.maps.Size(size_x, size_y));

	<%
		JSONDAO JSONMapping = new JSONDAO();
		String sql = "select TourSiteMapx, TourSiteMapy from eztour.toursite limit 0, 100;";
		try {
			JSONObject datas = (JSONObject) JSONMapping.getJSONObject(sql);
			JSONArray items = (JSONArray) datas.get("datas");
			System.out.println(items.size());
			for (int i = 0; i < items.size(); i++) {
				JSONArray item = (JSONArray) items.get(i);
				%>
				var marker = new google.maps.Marker({
				     position: new google.maps.LatLng(<%= item.get(0) %>,<%= item.get(1)%>),
				     map: map,
				     draggable: false,
				     icon: image,
				    });
			    markers.push(marker);

				<%
				System.out.println("(" + item.get(0) + ", " + item.get(1) + ")");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	%>
	google.maps.event.addDomListener(window, 'load', initialize);
	</script>
	<div id="map-canvas" style="width: 100%; height: 920px"></div>
</body>
</html>