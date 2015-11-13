<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String uri = request.getContextPath();
%>
<jsp:useBean id="setMap" class="DAO.MapDAO"></jsp:useBean>
<jsp:useBean id="courseBean" class="Bean.CourseBean"></jsp:useBean>