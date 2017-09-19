<%@page import="org.model.Course"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改课程信息</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<style type="text/css">
	body{
		width:800px;
	}
</style>
</head>
<body>

	<jsp:useBean id="couservice" class="org.service.CourseService"></jsp:useBean>
	<%
		String cno = request.getParameter("cno");
		//out.println(cno);

		Course cou = couservice.getCouByCno(cno);
		/*out.println(cou.getCno());
		out.println(cou.getCname());
		out.println(cou.getIsRequired());
		out.println(cou.getCredit());*/
	%>

	<h1 class="stu_title">修改课程信息</h1>
	<div class="add_stu">
		<form action="update_result.jsp" method="post">
			<table>
                <tr>
                    <td><input type="hidden" name="cno" value="<%=cou.getCno()%>" /></td>
                </tr>
				<tr>
					<td>课程名称：</td>
					<td><input type="text" name="cname" value="<%=cou.getCname()%>" /></td>
				</tr>
				<tr>
					<td>是否必修(yes/no)：</td>
					<td><input type="radio" name="isRequired" value="yes" checked>是</td>
					<td><input type="radio" name="isRequired" value="no" >否</td>
				</tr>
				<tr>
					<td>学分：</td>
					<td><input type="text" name="credit" value="<%=cou.getCredit()%>" />
				</td>
				<tr>
					<td></td>
					<td><input type="submit" value="提交"></td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>