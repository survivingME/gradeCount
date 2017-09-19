<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<script type="text/javascript">
	function alertErr() {
		alert("用户名或密码错误!");
	}
</script>
</head>
<body>
	<jsp:useBean id="user" class="org.model.User"></jsp:useBean>
	<jsp:useBean id="userservice" class="org.service.UserService"></jsp:useBean>
	<jsp:setProperty property="*" name="user" />
	<%
		if (userservice.validUser(user)) {
			session.setAttribute("user", user);
	%>

	<jsp:forward page="main.jsp"></jsp:forward>
	<%
		} else {
	%>
    <jsp:forward page="index.jsp"></jsp:forward>
	<%
		}
	%>

</body>
</html>