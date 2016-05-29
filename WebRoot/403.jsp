<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>出错啦！！！orz</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <center><img src="resource/img/403.png"></center>
    <center>
    	<div style="font-size: 30px;">
    		<a href="javascript:back()" style="text-decoration:none;">后退</a> &nbsp&nbsp&nbsp<a href="login.jsp" style="text-decoration:none;">返回到登陆页面</a>
    	</div>
    </center>
<script type="text/javascript">
	function back(){
		window.history.go(-1);
	}
</script>
  </body>
</html>
