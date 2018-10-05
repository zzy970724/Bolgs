<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登陆  |  注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
	<link rel="stylesheet"  href="css/xqsb.css">
	<link href="zzy.ico" rel="shortcut icon" />

		<!-- Custom CSS -->
		<link rel="stylesheet" href="css/style.css">
		<link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
		<link rel="stylesheet" href="css/login.css">
		
		<!-- jQuery and Modernizr-->
		<script src="js/jquery-2.1.1.js"></script>
		<!-- Core JavaScript Files -->
		<script src="js/bootstrap.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script>
			function fun_submit(flag) {
				$('input[name="flag"]').val(flag);
			}
		</script>
</head>
<body>
	<h1 style="text-align: center;margin-top: 80">Blogs</h1>
	
	  <form action="UserServlet.do" method="post">
			<div class="" style="background-color: white; width: 280px;height: 320px; margin: 0 auto; margin-top:70px; text-align: center;border-radius:9px;">
					<br>
					<img alt="" src="images/ava-3.jpeg" class="img-circle"/><br>
					<br><input  type="text" class="form-control" placeholder="Username" name="username" value="${username}">	
					<input type="password" class="form-control" placeholder="Password" name="password">
					<br>
					<input type="submit" class="btn btn-success" value="登陆" style="width:160px " onclick="fun_submit('login')">
					<div>&nbsp;</div>
					<input type="submit" class="btn btn-info" value="注册" style="width:160px " onclick="fun_submit('register')">
					<input type="hidden" name="flag">
			</div>
			<div style="float:right;background-color: white;width:220px;height:35px;border-radius:9px;text-align: center;margin-top:38px;
				<c:if test="${message == null}">display:none</c:if>
				" ><font size="5"color="primary">${message}</font>
			</div>
	  </form>
</body>
</html>
