<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mapGet" class="DAO.MapDAO"></jsp:useBean>
<%@page import="org.json.simple.*" %>
<%@page import="org.json.simple.parser.*" %>
<%@page import="java.util.*" %>
<%
	String tourPath = request.getParameter("tourPath");
	String sql = "SELECT TourSiteTitle, TourSiteMapX, TourSiteMapY, TourSiteFirstImage From toursite WHERE TourSiteContentID=?";

	String result = mapGet.getJSONObject(sql, tourPath).toString();

%>
<%=result %>