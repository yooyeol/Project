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
<script type="text/javascript" src="https://maps.google.com/maps/api/js?sensor=false"></script>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" /> 
<style type="text/css">   
html { height: 100% }   
body { height: 100%; margin: 0px; padding: 0px }   
#map_canvas { height: 100% } 
</style> 
<script>
var x = "37.4837121";
var y = "127.0324112";
//전국에 대한 중심 좌표(지도 중심 좌표 설정-변경 해도 됨)
 
function initialize() {     
 var latlng = new google.maps.LatLng(x, y);     
 //map center coordinate (맵 중심 좌표)
 //좌표 객체를 이렇게 만든다. marker 를 만들때도
 //이렇게 객체를 만들어서 사용할 수 있다.
 var myOptions = {       
   zoom: 7,       
   center: latlng,       
   mapTypeId: google.maps.MapTypeId.ROADMAP     
   };    
 var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);   
 
 
    //var greenIcon = new google.maps.MarkerImage(
    //        "http://www.jfree.org/jfreechart/images/PieChartDemo1.png",
    //        new google.maps.Size(30, 40),
    //        new google.maps.Point(0, 0)
    //    );
    
    var chartIcon = new google.maps.MarkerImage(
            "http://www.jfree.org/jfreechart/images/PieChartDemo1.png",
            new google.maps.Size(100, 100),
            '',
            '',
            new google.maps.Size(100, 100)
        );    
    
  //  var marker = new google.maps.Marker({
   //     position: latlng,
   //     icon: greenIcon,
   //     title:latlng.formatted_address,
   //     map: map
   // });
    
    var geocoder =  new google.maps.Geocoder();
    
    var region = document.getElementById("region1").value.split(",");
    //마커를 올릴 지역을 가져온다.
    if ( region.length > 0 ) {
        for ( var i = 0; i < region.length; i++ ) {
            geocoder.geocode( {'address': region[i]}, function(results, status) {
             //지오 코딩이라는 지역 이름을 가지고 좌표를 얻을 수 있는 API 를 이용하여 좌표를 가져온다.
                if ( status == google.maps.GeocoderStatus.OK ) {
                    for ( var j = 0; j < results.length; j++ ) {                        
                        var marker = new google.maps.Marker({
                            position: results[j].geometry.location,
                            icon: chartIcon,
                            title:results[j].formatted_address,
                            map: map
                        }); 
                        //마커를 만들어 준다.
                        //좌표를 알고 있을 경우   position: results[j].geometry.location 부분에 var latlng = new google.maps.LatLng(x, y); 
                        //와 같이 객체를 만들어서 position: latlng 를 넣어 준다.
                        //좌표를 알고 있다면 굳이 지오코더를 쓸 필요가 없다. 
                        //한국 지역에 대한 코드를 DB 화 해 놓은 데이터가 있는데 
                        //첨부 .sql 파일을 읽어보면 알 수 있다.
                        //지오코더는 하루에 2500건 밖에 질의 할 수 없기 때문에
                        //DB 화 해 놓은 곳에서 읽으면 그만큼 쿼리 수를 줄일 수 있다.
                        
                        google.maps.event.addListener(marker, 'click', function(){
                           // clickMakerImage(marker);
                           // marker 를 클릭 했을 때 이벤트를 여기서 설정 할 수 있다.
                        }); 
                    } 
                }
                else { 
                    alert("ERRER - region["+i+"] : "+region[i]);
                    alert("Geocode was not successful for the following reason: " + status);
                }
            });
        }
    }    
}

</script>
<title>Insert title here</title>
</head>
<body onload="initialize()">
<input type="hidden" id="region1" value="서울특별시,대전광역시,대구광역시"/> 
<div id="map_canvas" style="width:100%; height:100%"></div>
</body>
</html>