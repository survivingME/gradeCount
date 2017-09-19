<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
   
   session.removeAttribute("user");
   
%>
<jsp:include page="checklogin.jsp"></jsp:include>
<jsp:forward page="index.jsp" ></jsp:forward>