<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
<link href="style.css" rel="stylesheet" type="text/css">
  </head>
  <body>
      <object id="map" data="koreaEarth.svg" type="image/svg+xml" width="500" height="500">
      Your Browser doesn't support SVG
      </object>
      <br/>
      <br/>
      <br/>
      <br/>
      <h1 id="h1"></h1>
      <button onclick="myFunction()">이고</button>
      
<script type="text/javascript">
var svgTag;
function myFunction(){
	var map = document.getElementById("map");
	var svgDoc = map.contentDocument;
	svgWrapId = svgDoc.getElementById("layer_1");
	svgTag = svgDoc.getElementsByTagName("path");
	
	document.getElementById("h1").innerHTML = svgTag;
}

</script>      
  </body>
</html>