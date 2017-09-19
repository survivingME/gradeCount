<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<style type="text/css">
body {
	width: 200px;
	margin: 0 auto;
}
</style>
</head>
<jsp:include page="checklogin.jsp"></jsp:include>
<body>

<ul  class="menu_ul">
  <li><a href="addcou.jsp" target="main_right">录入课程信息</a> </li>
   <li><a href="showcou.jsp" target="main_right">查看课程信息</a> </li>
   <li><a href="showcre.jsp" target="main_right">查看学分统计</a> </li>
   <li><a href="exit.jsp" target="_top">退出</a> </li>
</ul>
</body>
</html>