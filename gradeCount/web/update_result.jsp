<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.model.Course"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>课程更新</title>
</head>
<body>
	<jsp:useBean id="course" class="org.model.Course"></jsp:useBean>
	<jsp:useBean id="couService" class="org.service.CourseService"></jsp:useBean>
	<jsp:setProperty property="*" name="course" />
	<%
		 out.println(course.getCno());
		 out.println(course.getCname());
		 out.println(course.getIsRequired());
		 out.println(course.getCredit());
		 String result = couService.updateCou(course);
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