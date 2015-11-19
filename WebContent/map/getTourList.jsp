<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="listGet" class="DAO.MapDAO"></jsp:useBean>
    <%@page import="org.json.simple.*" %>
    <%@page import="org.json.simple.parser.*" %>
<%
	String areaCode = request.getParameter("areaCode");
	String contentType = request.getParameter("contentType");
	String sql = "SELECT TourSiteContentID, TourSiteTitle, TourSiteAddr, TourSiteMapX, TourSiteMapY, TourSiteFirstImage, ContentTypeID FROM TOURSITE WHERE TourSiteAreaCode=? AND ContentTypeID=?";
	String result = listGet.getJSONObject(sql, areaCode, contentType).toString();
%>
<%=result%>