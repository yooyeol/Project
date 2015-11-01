<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <<jsp:useBean id="listGet" class="DAO.MapDAO"></jsp:useBean>
<%
	String areaCode = request.getParameter("areaCode");
	String contentType = request.getParameter("contentType");
	
	String sql = "SELECT TourSiteTitle FROM toursite WHERE areaCode=? AND contentType=?";
	
	
%>