<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="upCount" class="board.BoardMgr"></jsp:useBean>
    <%@page import="org.json.simple.*" %>
    <%@page import="org.json.simple.parser.*" %>
<%
	int MessageID = Integer.parseInt(request.getParameter("MessageID"));
	
	upCount.upGoodCount(MessageID);
%>
