<%@page import="org.model.Course"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看选课信息</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<style type="text/css">
body {
	width: 800px;
}
</style>
</head>
<jsp:include page="checklogin.jsp"></jsp:include>
<body>

	<h1 class="stu_title">查看选课信息</h1>
	<jsp:useBean id="coulist" class="org.service.CourseService"></jsp:useBean>
	<%
		List stus = coulist.getAllCourse();
		Iterator iter = stus.iterator();
	%>
	<div class="showstu">
		<table align="center">
			<tr>
				<td>课程id</td>
				<td>课程名称</td>
				<td>是否必修(yes/no)</td>
				<td>学分</td>
				<td>修改</td>
				<td>删除</td>
			</tr>
			<%
				int i = 0;
				while (iter.hasNext()) {
					Course course = (Course) iter.next();
			%>
			<tr <%if (i % 2 == 0) {%> bgcolor="#ffffff" <%}%>>
				<td><%=course.getCno()%></td>
				<td><%=course.getCname()%></td>
				<td><%=course.getIsRequired()%></td>
				<td><%=course.getCredit()%></td>
				<td><a href="updatecou.jsp?cno=<%=course.getCno()%>">修改</a></td>
				<td><a href="deletecou.jsp?cno=<%=course.getCno()%>">删除</a></td>
			</tr>
				<%
					i++;
					}
				%>
			
		</table>
	</div>
</body>
</html>