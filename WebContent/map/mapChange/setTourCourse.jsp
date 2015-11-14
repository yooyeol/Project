<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="" %>
<%
	request.setCharacterEncoding("UTF-8");
	String uri = request.getContextPath();
	String[] tourPath = request.getParameterValues("tourPath");
	String userId = session.getAttribute("").toString();
%>