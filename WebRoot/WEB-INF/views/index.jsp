<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
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
    	你当前的角色是:${role.roleName }
    	你登陆的账号是:${user.username }
    	你登陆的密码是:${user.password }
    	<a href="staff/staff_index.do">staff_go</a>
    	<a href="org/org_index.do">org_go</a>
    	<a href="PSG/PSG_index.do">permanent_studygroup_go</a>
    	<a href="TSG/TSG_index.do">temporary_studygroup_go</a>
  </body>
</html>
