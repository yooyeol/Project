<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.HashMap"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray" %>
<%@page import="org.json.simple.parser.JSONParser" %>
<%@page import="java.util.ArrayList" %>
<jsp:useBean id="getDetail" class="DAO.DetailDAO"></jsp:useBean>
<%
    String tourSiteContentID = request.getParameter("contentID");
	String contentTypeID = request.getParameter("contentTypeID");
	String uri = request.getContextPath();
	String jsonStr = null;
	ArrayList<String> colName = null;
	ArrayList<String> colValue = null;
	HashMap<String, String> sqlMap = new HashMap<String,String>();
	
	sqlMap.put("12","SELECT * FROM toursite, info, detailtourinfo where toursite.TourSiteContentID = info.TourSiteContentID AND toursite.TourSiteContentID = detailtourinfo.TourSiteContentID AND toursite.ContentTypeID=? AND toursite.TourSiteContentID=?");
	sqlMap.put("14","SELECT * FROM toursite, info, detailcultureinfo where toursite.TourSiteContentID = info.TourSiteContentID AND toursite.TourSiteContentID = detailcultureinfo.TourSiteContentID AND toursite.ContentTypeID=? AND toursite.TourSiteContentID=?");
	sqlMap.put("15","SELECT * FROM toursite, info, detaileventinfo where toursite.TourSiteContentID = info.TourSiteContentID AND toursite.TourSiteContentID = detaileventinfo.TourSiteContentID AND toursite.ContentTypeID=? AND toursite.TourSiteContentID=?");
	sqlMap.put("25","SELECT * FROM toursite, info, detailcourseinfo where toursite.TourSiteContentID = info.TourSiteContentID AND toursite.TourSiteContentID = detailcourseinfo.TourSiteContentID AND toursite.ContentTypeID=? AND toursite.TourSiteContentID=?");
	sqlMap.put("28","SELECT * FROM toursite, info, detailleportsinfo where toursite.TourSiteContentID = info.TourSiteContentID AND toursite.TourSiteContentID = detailleportsinfo.TourSiteContentID AND toursite.ContentTypeID=? AND toursite.TourSiteContentID=?");
	sqlMap.put("32","SELECT * FROM toursite, info, detailstayinfo where toursite.TourSiteContentID = info.TourSiteContentID AND toursite.TourSiteContentID = detailstayinfo.TourSiteContentID AND toursite.ContentTypeID=? AND toursite.TourSiteContentID=?");
	sqlMap.put("38","SELECT * FROM toursite, info, detailshoppinginfo where toursite.TourSiteContentID = info.TourSiteContentID AND toursite.TourSiteContentID = detailshoppinginfo.TourSiteContentID AND toursite.ContentTypeID=? AND toursite.TourSiteContentID=?");
	sqlMap.put("39","SELECT * FROM toursite, info, detailfoodinfo where toursite.TourSiteContentID = info.TourSiteContentID AND toursite.TourSiteContentID = detailfoodinfo.TourSiteContentID AND toursite.ContentTypeID=? AND toursite.TourSiteContentID=?");	
	jsonStr = getDetail.getDetailObject(sqlMap, tourSiteContentID, contentTypeID).toString();
	colName = getDetail.getColumnName();
	colValue = new ArrayList<String>();
	
	JSONParser jsonParser = new JSONParser();
	JSONObject jsonObject = (JSONObject) jsonParser.parse(jsonStr);
/* 	System.out.println("test : " + jsonObject);
	System.out.println("testSize : " + jsonObject.size()); */
	JSONArray jsonArray = (JSONArray) jsonObject.get("datas");
/* 	System.out.println("testArray : " + jsonArray);
	System.out.println("testArraySize : " + jsonArray.size()); */
	
	
	for(int i=0;i<jsonArray.size();i++){
		JSONObject jsonValue = (JSONObject)jsonArray.get(i);
 		System.out.println("testJsonValue : "+jsonValue);
		for(int j=0;j<colName.size();j++){
			colValue.add(jsonValue.get(colName.get(j)).toString());
		}
		System.out.println("colValueSize : " + colValue.size());
		
		for(int k=0;k<colValue.size();k++){
			System.out.println("testColValue.get(j) : "+colValue.get(k));
		}
	}

%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상세페이지</title>

<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="<%=uri%>/map/mapChange/js/detailPage.js"></script>
<script type="text/javascript">

</script>

</head>
<body>
	<div class="container">
  <h2>Dynamic Tabs</h2>
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">기본정보</a></li>
    <li><a data-toggle="tab" href="#menu1">기본정보</a></li>
    <li><a data-toggle="tab" href="#menu2">Menu 2</a></li>
    <li><a data-toggle="tab" href="#menu3">Menu 3</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <table class="table">
      	<tbody>
      		<%
      			for(int i=0;i<colName.size();i++){
      		%>
      			<tr>
      				<th><%=colName.get(i) %></th>
      				<td>1</td>
      			</tr>
      		<%
      			}
      		%>
      	</tbody>
      </table>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h3>Menu 1</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu2" class="tab-pane fade">
      <h3>Menu 2</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu3" class="tab-pane fade">
      <h3>Menu 3</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
</body>
</html>