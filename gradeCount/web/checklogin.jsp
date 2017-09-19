<%@page import="org.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    User user= (User)session.getAttribute("user");
    if(user==null){
%>
    <jsp:forward page="index.jsp"></jsp:forward>
<%
    }
%>