<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<jsp:useBean id="course" class="org.model.Course"></jsp:useBean>
	<jsp:useBean id="courseService"
		class="org.service.CourseService"></jsp:useBean>
	<jsp:setProperty property="*" name="course" />
	<%
		String result = courseService.addCou(course);
		if(result == "success") {
	%>
<jsp:forward page="showcou.jsp"></jsp:forward>
	<%
		} else {
			out.println(result);
		}
	%>
</body>
</html>