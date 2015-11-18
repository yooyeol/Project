var courseID=[];
var listsize;
$(document).ready(function(){
	listsize=$("#listsize").val();
	
	alert(listsize);
	/*alert($("#courseID").val());*/
	for(var i=0;i<listsize;i++){
		courseID[i]=$("#courseID").val();
		alert(courseID[i]);
	}
	
	//ï§žï¿½ï¿½ë¿­ ï¿½ê½‘ï¿½ê¹® ï¿½ë–†
	$("#getCart").click(function(){
		getCart(courseID);
			/*$.ajax({url: "upGoodCount.jsp?messageID="+MessageID});*/
	});
	
	
	
	function getCart(courseID){
		xhttp=new XMLHttpRequest();
		var url="getCart.jsp?MessageID="+MessageID+"&MemberID="+MemberID;
		xhttp.open("GET", url);
		xhttp.send();
		xhttp.onreadystatechange = function() {
		    if (xhttp.readyState == 4 && xhttp.status == 200) {
		    	alert("°æ·ÎÀå¹Ù±¸´Ï¿¡ ÀúÀå");
		    }
		};
	}
	
});