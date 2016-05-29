<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8" />
<title>厦门大学选任系统</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
</head>

<body>
	<center>
		<div style="margin-top: 10%; ">
			<span style="font-size: 100px; color: purple;">500</span> <span style="font-size: 30px;">--内部服务器错误</span>
		</div>
		<h4>
			你请求的资源所在服务器发生了一个错误，因而无法访问。请联系管理员
		</h4>
		<div style="font-size: 20px;">
    		<a href="javascript:back()" style="text-decoration:none;">后退</a> &nbsp&nbsp&nbsp <a href="login.jsp" style="text-decoration:none;">返回到登陆页面</a>
    	</div>
	</center>
</body>
<script type="text/javascript">
	function back(){
		window.history.go(-1);
	}
</script>
</html>


