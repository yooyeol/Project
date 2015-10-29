<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
  <link href="style.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <style>
	
  </style>
  </head>
  <body>
      <object id="svgMap" data="skorea-provinces-v3.1.svg" type="image/svg+xml" width="1000" height="1000">Your browser doesn't support SVG</object>
      <h1 id="h2">클릭시 변경되면 됨</h1>
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
 		  document.getElementById("h2").innerHTML = svgItem[0].getAttribute("data-region_id");
 	    });
   	$(svgItem[1]).click(function(){
		  document.getElementById("h2").innerHTML = svgItem[1].getAttribute("data-region_id");
 	    });
   	$(svgItem[2]).click(function(){
  		  document.getElementById("h2").innerHTML = svgItem[2].getAttribute("data-region_id");
  	    });
   	$(svgItem[3]).click(function(){
  		  document.getElementById("h2").innerHTML = svgItem[3].getAttribute("data-region_id");
  	    });
   	$(svgItem[4]).click(function(){
  		  document.getElementById("h2").innerHTML = svgItem[4].getAttribute("data-region_id");
  	    });
   	$(svgItem[5]).click(function(){
  		  document.getElementById("h2").innerHTML = svgItem[5].getAttribute("data-region_id");
  	    });
   	$(svgItem[6]).click(function(){
  		  document.getElementById("h2").innerHTML = svgItem[6].getAttribute("data-region_id");
  	    });
   	$(svgItem[7]).click(function(){
  		  document.getElementById("h2").innerHTML = svgItem[7].getAttribute("data-region_id");
  	    });
   	$(svgItem[8]).click(function(){
  		  document.getElementById("h2").innerHTML = svgItem[8].getAttribute("data-region_id");
  	    });
   	$(svgItem[9]).click(function(){
  		  document.getElementById("h2").innerHTML = svgItem[9].getAttribute("data-region_id");
  	    });
   	$(svgItem[10]).click(function(){
  		  document.getElementById("h2").innerHTML = svgItem[10].getAttribute("data-region_id");
  	    });
   	$(svgItem[11]).click(function(){
  		  document.getElementById("h2").innerHTML = svgItem[11].getAttribute("data-region_id");
  	    });
   	$(svgItem[12]).click(function(){
  		  document.getElementById("h2").innerHTML = svgItem[12].getAttribute("data-region_id");
  	    });
   	$(svgItem[13]).click(function(){
  		  document.getElementById("h2").innerHTML = svgItem[13].getAttribute("data-region_id");
  	    });
   	$(svgItem[14]).click(function(){
  		  document.getElementById("h2").innerHTML = svgItem[14].getAttribute("data-region_id");
  	    });
   	$(svgItem[15]).click(function(){
  		  document.getElementById("h2").innerHTML = svgItem[15].getAttribute("data-region_id");
  	    });
   	$(svgItem[16]).click(function(){
  		  document.getElementById("h2").innerHTML = svgItem[16].getAttribute("data-region_id");
  	    });
   	$(svgItem[17]).click(function(){
  		  document.getElementById("h2").innerHTML = svgItem[17].getAttribute("data-region_id");
  	    });
}
  </script>
</html>