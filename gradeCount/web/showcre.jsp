<%@page import="org.model.Course"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看学分统计</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<style type="text/css">
body {
	width: 800px;
}
</style>
</head>
<jsp:include page="checklogin.jsp"></jsp:include>
<body>

	<h1 class="stu_title">查看学分统计</h1>
	<jsp:useBean id="Required" class="org.service.CourseService"></jsp:useBean>
	<jsp:useBean id="NoRequired" class="org.service.CourseService"></jsp:useBean>
	<%
		String required = Required.getRequired();
		String norequired = NoRequired.getNoRequired();
		/* out.println(stus.size()); */
	%>
	<div class="showstu">
		<table align="center">
			<tr>
				<td>必修学分</td>
				<td><%=required%></td>
			</tr>
				<td>选修学分</td>
				<td><%=norequired%></td>
			<tr>	
		</table>

	</div>
</body>
</html>