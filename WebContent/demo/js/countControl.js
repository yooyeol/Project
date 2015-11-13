/**
 * 
 */

var MessageID=$("#upGoodCount").val();

$(document).ready(function(){
	//吏��뿭 �꽑�깮 �떆
	$("#upGoodCount").click(function(){
		document.getElementById("upGoodCount").innerHTML='<span style="color : red" class="glyphicon glyphicon-heart-empty" aria-hidden="true">!!!';
		upGoodCount(MessageID);
		
			/*$.ajax({url: "upGoodCount.jsp?messageID="+MessageID});*/
	
	});
	
	$("#upPoorCount").click(function(){
		document.getElementById("upPoorCount").innerHTML='<span style="color : blue" class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></span>!!!';
		upCount();
	});
	
	

	function upGoodCount(MessageID){
		xhttp=new XMLHttpRequest();
		var url="upGoodCount.jsp?MessageID="+MessageID;
		
		 xhttp.onreadystatechange = function() {
			    if (xhttp.readyState == 4 && xhttp.status == 200) {

			    }
			  };
		
		xhttp.open("POST", url);

		xhttp.send();
		
	}
	
	
});