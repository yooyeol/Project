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
	
	//吏��뿭 �꽑�깮 �떆
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
		    	alert("�����ٱ��Ͽ� ����");
		    }
		};
	}
	
});