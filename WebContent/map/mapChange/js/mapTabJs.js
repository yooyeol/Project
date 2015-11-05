/**
 * 
 */
var map;
/* function initMap(lat, lng) {//lat : -34.397   lng : 150.644
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: lat, lng: lng},
    zoom: 8
  });
} */

function initMap() {
	  map = new google.maps.Map(document.getElementById('map'), {
	    center: {lat: -34.397, lng: 150.644},
	    zoom: 8
	  });
}

function listAdd(jsonObject){
	var list
	for(var i in jsonObject.datas){
		list += '<li id=\"'+jsonObject.datas[i].TourSiteContentID+'\" class="list-group-item" value="'+ jsonObject.datas[i].TourSiteContentID+'">' + jsonObject.datas[i].TourSiteTitle + '<span class="glyphicon glyphicon-remove-circle delete"></span></li>';
	}
	return list;
}