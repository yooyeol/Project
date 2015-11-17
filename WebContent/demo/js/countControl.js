var MessageID;
var MemberID;
$(document).ready(function(){
	MessageID = $("#upGoodCount").val();
	MemberID=$("#GoodmemberID").val();
	//筌욑옙占쎈열 占쎄퐨占쎄문 占쎈뻻
	$("#upGoodCount").click(function(){
		document.getElementById("upGoodCount").innerHTML='<span style="color : red" class="glyphicon glyphicon-heart-empty" aria-hidden="true">!!!';
		upGoodCount(MessageID,MemberID);
			/*$.ajax({url: "upGoodCount.jsp?messageID="+MessageID});*/
	});
	
	$("#upPoorCount").click(function(){
		document.getElementById("upPoorCount").innerHTML='<span style="color : blue" class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></span>!!!';
		upPoorCount(MessageID,MemberID);
	});
	
	function upGoodCount(MessageID,MemberID){
		xhttp=new XMLHttpRequest();
		var url="upGoodCount.jsp?MessageID="+MessageID+"&MemberID="+MemberID;
		xhttp.open("GET", url);
		xhttp.send();
		xhttp.onreadystatechange = function() {
		    if (xhttp.readyState == 4 && xhttp.status == 200) {
		    	alert("이 게시물을 좋아합니다.");
		    }
		};
	}
	
	function upPoorCount(MessageID,MemberID){
		xhttp=new XMLHttpRequest();
		var url="upPoorCount.jsp?MessageID="+MessageID+"&MemberID="+MemberID;
		xhttp.open("GET", url);
		xhttp.send();
		xhttp.onreadystatechange = function() {
		    if (xhttp.readyState == 4 && xhttp.status == 200) {
		    	alert("이 게시물을 싫어합니다.");
		    }
		};
	}
	
	
});