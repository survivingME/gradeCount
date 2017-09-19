<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<style type="text/css">

   body{
     width:800px;
   }
</style>
</head>
<body>
	<h1 class="stu_title">增加课程信息</h1>
	<div class="add_stu">
		<form  action="addcou_result.jsp" method="post">
			<table>
				<tr>
					<td>课程名称：</td>
					<td><input type="text" name="cname" /></td>
				</tr>
				<tr>
					<td>是否必修(yes/no)：</td>
					<td><input type="radio" name="isRequired" value="yes" checked>是</td>
					<td><input type="radio" name="isRequired" value="no" >否</td>
				</tr>
				<tr>
					<td>学分：</td>
					<td><input type="text" name="credit" /></td>
				</tr>
				   <td><input type="submit" value="提交"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>