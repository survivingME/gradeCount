<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除课程信息</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<jsp:include page="checklogin.jsp"></jsp:include>
<body>
	<h1 class="stu_title">删除课程信息</h1>
	<jsp:useBean id="deleteCou" class="org.service.CourseService"></jsp:useBean>
	<%
		String cno = request.getParameter("cno");
		if (deleteCou.deleteCou(cno) == true) {
			out.println("success");
		} else {
			out.println("error");
		}
	%>
</body>
</html>