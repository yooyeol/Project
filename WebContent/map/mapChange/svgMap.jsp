<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String uri = request.getContextPath();
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
  <link href="style.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  </head>
  <body>
	<form name="svgMapFrm"method="post">
		<object id="svgMap" data="skorea-provinces-v3.1.svg" type="image/svg+xml" width="500" height="500">Your browser doesn't support SVG</object>
	</form>
  </body> 
  <script>
  var a;
  var svgDoc;
  var svgItem;
  
  window.onload=function(){
	  
  	a = document.getElementById("svgMap");
  	svgDoc = a.contentDocument;
  	svgItem = svgDoc.getElementsByClassName("region");
  	
	$(svgItem[0]).click(function(){
 		opener.document.mapFrm.areaCode.value=svgItem[0].getAttribute("data-region_id");
 		self.close();
	});
   	$(svgItem[1]).click(function(){
 		opener.document.mapFrm.areaCode.value=svgItem[1].getAttribute("data-region_id");
		self.close();
   	});
   	$(svgItem[2]).click(function(){
 		opener.document.mapFrm.areaCode.value=svgItem[2].getAttribute("data-region_id");
		self.close();
   	});
   	$(svgItem[3]).click(function(){
 		opener.document.mapFrm.areaCode.value=svgItem[3].getAttribute("data-region_id");
		self.close();
   	});
   	$(svgItem[4]).click(function(){
 		opener.document.mapFrm.areaCode.value=svgItem[4].getAttribute("data-region_id");
		self.close();
   	});
   	$(svgItem[5]).click(function(){
 		opener.document.mapFrm.areaCode.value=svgItem[5].getAttribute("data-region_id");
		self.close();
   	});
   	$(svgItem[6]).click(function(){
 		opener.document.mapFrm.areaCode.value=svgItem[6].getAttribute("data-region_id");
		self.close();
   	});
   	$(svgItem[7]).click(function(){
 		opener.document.mapFrm.areaCode.value=svgItem[7].getAttribute("data-region_id");
		self.close();
   	});
   	$(svgItem[8]).click(function(){
 		opener.document.mapFrm.areaCode.value=svgItem[8].getAttribute("data-region_id");
		self.close();
   	});
   	$(svgItem[9]).click(function(){
 		opener.document.mapFrm.areaCode.value=svgItem[9].getAttribute("data-region_id");
		self.close();
   	});
   	$(svgItem[10]).click(function(){
 		opener.document.mapFrm.areaCode.value=svgItem[10].getAttribute("data-region_id");
		self.close();
   	});
   	$(svgItem[11]).click(function(){
 		opener.document.mapFrm.areaCode.value=svgItem[11].getAttribute("data-region_id");
		self.close();
   	});
   	$(svgItem[12]).click(function(){
 		opener.document.mapFrm.areaCode.value=svgItem[12].getAttribute("data-region_id");
		self.close();
   	});
   	$(svgItem[13]).click(function(){
 		opener.document.mapFrm.areaCode.value=svgItem[13].getAttribute("data-region_id");
		self.close();
   	});
   	$(svgItem[14]).click(function(){
 		opener.document.mapFrm.areaCode.value=svgItem[14].getAttribute("data-region_id");
		self.close();
   	});
   	$(svgItem[15]).click(function(){
 		opener.document.mapFrm.areaCode.value=svgItem[15].getAttribute("data-region_id");
		self.close();
   	});
   	$(svgItem[16]).click(function(){
 		opener.document.mapFrm.areaCode.value=svgItem[16].getAttribute("data-region_id");
		self.close();
   	});
   	$(svgItem[17]).click(function(){
 		opener.document.mapFrm.areaCode.value=svgItem[17].getAttribute("data-region_id");
		self.close();
   	});
}
  </script>
</html>