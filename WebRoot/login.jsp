<%@page import="com.common.WebApplication"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>厦门大学选任系统</title>

        <!-- CSS -->
        <link rel="stylesheet" href="resource/css/bootstrap.min.css">
        <link rel="stylesheet" href="resource/css/font-awesome.min.css">
		<link rel="stylesheet" href="resource/css/login-css/form-elements.css">
        <link rel="stylesheet" href="resource/css/login-css/style.css">
		<!-- Javascript -->
        <script src="resource/js/jquery-1.11.1.js"></script>
        <script src="resource/js/bootstrap.min.js"></script>
        <script src="resource/js/jquery.backstretch.min.js"></script>
        
    	<style>
    		#changeCode:hover{
    			color:red;
    			cursor:pointer;
    		}
    	</style>
    </head>

    <body>

        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>厦门大学选任系统</strong></h1>
                            <div class="description">
                            	<p>
	                            	选任考察任务统一登陆入口 
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>登陆</h3>
                            		<p>组织部、考察组、报名人员使用各自的账户进行登陆</p>
                        		</div>
                        		<div class="form-top-right">
                        			<span class="fa fa-lock"></span>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" name="f" action='<c:url value="/j_spring_security_check" />' method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label for="form-username">用户名</label>
			                        	<input type="text" name="j_username" value="${SPRING_SECURITY_LAST_USERNAME}" class="form-username form-control" id="form-username">
			                        </div>
			                        <div class="form-group">
			                        	<label for="form-password">密码</label>
			                        	<input type="password" name="j_password" class="form-password form-control" id="form-password">
			                        </div>
                                    <div class="form-group">
                                        <label for="checkCode">验证码</label>
                                        <input type="text" id="checkCode" name="j_checkCode" class="form-password form-control">
                                    </div>
                                    <div class="form-group">
                                    	<label></label>
                                    	<img id="CodeImg" src="image.jsp" style="width:120px; height:30px;"/><h4 id="changeCode">看不清？换一张</h4>
                                    </div>
                                    <div class="form-group">
                                    	<h5 style="color:red">${SPRING_SECURITY_LAST_EXCEPTION.message } ${errmsg}</h5>
                                    </div>
			                        <button type="submit" class="btn">登陆</button>
			                        <div style="height: 30px"></div>
			                        <button type="button" class="btn" id="sign_up">注册(仅报名人员)</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3">
                        	<h4>Copyright 2016 厦门大学信息学院</h4>
							<p>地址：厦门市思明区演武路<br />电话：0592-2186110<p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script type="text/javascript">
    
    /*
        Fullscreen background
    */
    $.backstretch("resource/img/login-background/1.jpg");
    
    /*
        Form validation
    */
    $('.login-form input[type="text"], .login-form input[type="password"], .login-form textarea').on('focus', function() {
        $(this).removeClass('input-error');
    });
    
    $('.login-form').on('submit', function(e) {
        
        $(this).find('input[type="text"], input[type="password"], textarea').each(function(){
            if( $(this).val() == "" ) {
                e.preventDefault();
                $(this).addClass('input-error');
            }
            else {
                $(this).removeClass('input-error');
            }
        });
        
    });
    
    $("#changeCode").click(function(){
		$("#CodeImg").attr("src","image.jsp?randCode="+Math.random());
	});
	
	$("#sign_up").click(function(){
		window.location.href="sign_up.html";
	});
    </script>

</html>
