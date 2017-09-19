<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>课程学分管理系统</title>
<script type="text/javascript">
    function checkInput(form){  //限制用户名和密码不能为空
    	if(form.username.value.length<1){
    		alert("用户名不为空");
    		form.username.focus();
    		return false;
    	}else if(form.password.value.length<1){
    		alert("密码不能为空")
    		form.password.focus();
    		return false;
    	}
    	
    	return true;
    }
</script>
</head>
<body>
    <div class="container">
    <h1>课程学分管理系统</h1>
       <div class="login">
          <form name="login" method="post" action="login.jsp" onsubmit="return checkInput(this);">
             <span>username:</span><input type="text" name="username" id="username"></br>
             <span>password:</span><input type="password" name="password" id="password"><br>
             <input type="submit" value="Login">
          </form>
        </div>
    </div>
</body>
</html>