<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8" />
<title>厦门大学选任系统</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="../resource/BackstageCommon/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="../resource/BackstageCommon/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
<link href="../resource/BackstageCommon/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="../resource/BackstageCommon/css/style.css" rel="stylesheet" type="text/css" />
<link href="../resource/BackstageCommon/css/style-responsive.css" rel="stylesheet" type="text/css" />
<link href="../resource/BackstageCommon/css/default.css" rel="stylesheet" type="text/css" id="style_color" />
<link href="../resource/css/bootstrap-fileupload.css" rel="stylesheet" type="text/css">
<!-- END GLOBAL MANDATORY STYLES -->
<link rel="shortcut icon" href="../resource/BackstageCommon/image/favicon.ico" />
<style type="text/css">
.form_font {
	font-size: 14px;
	margin-left: 15px;
	margin-right: 5px;
}
</style>
</head>

<body class="page-header-fixed">

	<!-- BEGIN HEADER -->

	<div class="header navbar navbar-inverse navbar-fixed-top">

		<!-- BEGIN TOP NAVIGATION BAR -->

		<div class="navbar-inner">
			<div class="container-fluid">
				<!-- BEGIN LOGO -->
				<a class="brand" href=""> <img src="../resource/BackstageCommon/image/empanel_logo.png" /> </a>
				<!-- END LOGO -->
				<!-- BEGIN RESPONSIVE MENU TOGGLER -->
				<a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse"> <img src="../resource/BackstageCommon/image/menu-toggler.png" alt="" /> </a>
				<!-- END RESPONSIVE MENU TOGGLER -->
				<!-- BEGIN TOP NAVIGATION MENU -->
				<ul class="nav pull-right">
					<!-- BEGIN USER LOGIN DROPDOWN -->
					<li class="dropdown user"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> <img alt="" src="${info.photo }" style="max-width: 35px; max-height: 35px;"/> <span class="username">${username }</span> <i class="icon-angle-down"></i> </a>
						<ul class="dropdown-menu">
							<li><a href="#" data-toggle="modal" data-target="#person_info"><i class="icon-user"></i> 个人信息</a></li>
							<li class="divider"></li>
							<li><a href="<c:url value="/j_spring_security_logout"/>"><i class="icon-key"></i> 注销</a></li>
						</ul>
					</li>
					<!-- END USER LOGIN DROPDOWN -->
				</ul>
				<!-- END TOP NAVIGATION MENU -->
			</div>
		</div>
		<!-- END TOP NAVIGATION BAR -->
	</div>
	<!-- END HEADER -->
	<!-- BEGIN CONTAINER -->
	<div class="page-container row-fluid">
		<!-- BEGIN SIDEBAR -->
		<div class="page-sidebar nav-collapse collapse">
			<!-- BEGIN SIDEBAR MENU -->
			<ul class="page-sidebar-menu">
				<li>
					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
					<div class="sidebar-toggler hidden-phone"></div> <!-- BEGIN SIDEBAR TOGGLER BUTTON --></li>
				<li class="start"><a href="staff_index.do"> <i class="icon-home"></i> <span class="title">首页</span> </a>
				</li>
				<li class="active"><a href="javascript:;"> <i class="icon-user"></i> <span class="title">个人基本信息</span> <span class="selected"></span> <span class="arrow open"></span> </a>
					<ul class="sub-menu">
						<li class="active"><a href="staff_info.do">信息查看和编辑</a>
						</li>
					</ul>
				</li>

				<li class=" "><a href="javascript:;"> <i class="icon-table"></i> <span class="title">选任报名</span> <span class="arrow"></span> </a>

					<ul class="sub-menu">
						<li class=""><a href="staff_register.do">所有可报名选任信息</a>
						</li>
					</ul>
				</li>
			</ul>
			<!-- END SIDEBAR MENU -->
		</div>
		<!-- END SIDEBAR -->
		<!-- BEGIN PAGE -->
		<div class="page-content">
			<!-- BEGIN PAGE CONTAINER-->
			<div class="container-fluid">
				<!-- BEGIN PAGE HEADER-->
				<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN STYLE CUSTOMIZER -->
						<div class="color-panel hidden-phone" style="display: none">
							<label> <span>Header</span> <select class="header-option m-wrap small">
									<option value="fixed" selected>Fixed</option>
									<option value="default">Default</option>
							</select> </label> <label> <span>Sidebar</span> <select class="sidebar-option m-wrap small">
									<option value="fixed" id="sidebar_fixed">Fixed</option>
									<option value="default">Default</option>
							</select> </label> <label> <span>Footer</span> <select class="footer-option m-wrap small">
									<option value="fixed">Fixed</option>
									<option value="default">Default</option>
							</select> </label>
						</div>
						<!-- END BEGIN STYLE CUSTOMIZER -->
						<h3 class="page-title">
							个人信息 <small>在本页面可以随时对你的个人信息进行查看和修改,<span style="color:red">同时以下信息将作为报名表中的内容,请如实填写</span>
							</small>
						</h3>
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="staff_index.do">首页</a> <span class="icon-angle-right"></span>
							</li>
							<li><a href="#">个人基本信息</a> <span class="icon-angle-right"></span></li>
							<li><a href="#">信息查看</a></li>
						</ul>
					</div>
				</div>
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row-fluid">
					<div class="span12">
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption">
									<i class="icon-reorder"></i>以下是你的信息
								</div>
							</div>
							<div class="portlet-body form">
								<form class="form-horizontal" id="info_form">
									<div class="control-group">

										<label class="control-label">照片<span style="color: red">*</span></label>

										<div class="controls">
											<div class="fileupload fileupload-new" data-provides="fileupload">
												<div class="fileupload-new thumbnail" style="max-width: 200px; max-height: 150px;">
													<img src="${info.photo }" alt="" />
												</div>
												<div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
												<div>
													<span class="btn btn-file"><span class="fileupload-new">选择图片</span> <span class="fileupload-exists">更换</span> <input id="photo" name="photo" type="file" class="default" /> </span> <a href="#" class="btn fileupload-exists" data-dismiss="fileupload">删除</a>
												</div>
											</div>
											<span class="label label-important">注意!</span> <span> 上传图片仅支持IE10以上版本浏览器，图片格式为jpg,png，图片大小为 </span>
										</div>

									</div>
									<div class="control-group">
										<label class="control-label">姓名<span style="color: red">*</span></label>
										<div class="controls">
											<input type="text" placeholder="xxx" name="name" value="${info.name }">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">性别<span style="color: red">*</span></label>
										<div class="controls">
											<c:choose>
												<c:when test="${info.gender == null or info.gender =='' }">
													<select class="span2" name="gender">
														<option value="">请选择</option>
														<option value="男">男</option>
														<option value="女">女</option>
													</select>
												</c:when>
												<c:otherwise>
													<c:if test="${info.gender == '男'}">
														<select class="span2" name="gender">
															<option value="">请选择</option>
															<option value="男" selected="selected">男</option>
															<option value="女">女</option>
														</select>
													</c:if>
													<c:if test="${info.gender == '女'}">
														<select class="span2" name="gender">
															<option value="">请选择</option>
															<option value="男">男</option>
															<option value="女" selected="selected">女</option>
														</select>
													</c:if>
												</c:otherwise>
											</c:choose>

										</div>
									</div>
									<div class="control-group">
										<label class="control-label">出生年月<span style="color: red">*</span></label>
										<div class="controls">
											<select class="span2 year" name="born_year">
												<option value="">请输入</option>
												<c:forEach var="x" begin="1900" end="2020">
													<!-- 这里用c:choose里面的c:when无法判断相等,不知道抽什么风TMD  -->
													<c:if test="${info.born_year == x }">
														<option value="${x}" selected="selected">${x}</option>
													</c:if>
													<c:if test="${info.born_year != x }">
														<option value="${x}">${x}</option>
													</c:if>
												</c:forEach>
											</select> / <select class="span2 month" name="born_month">
												<option value="">请输入</option>
												<c:forEach var="x" begin="1" end="12">
													<c:if test="${info.born_month == x }">
														<option value="${x}" selected="selected">${x}</option>
													</c:if>
													<c:if test="${info.born_month != x }">
														<option value="${x}">${x}</option>
													</c:if>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">民族<span style="color: red">*</span></label>
										<div class="controls">
											<select class="nation" name="nation">
												<option value="">请选择</option>
												<c:forEach items="${ethnic }" var="uv">
													<c:if test="${info.nation == uv.ethnic}">
														<option value="${uv.ethnic }" selected="selected">${uv.ethnic }</option>
													</c:if>
													<c:if test="${info.nation != uv.ethnic}">
														<option value="${uv.ethnic }">${uv.ethnic }</option>
													</c:if>
												</c:forEach>
											</select>
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">籍贯<span style="color: red">*</span></label>
										<div class="controls">
											<select class="span2 province_select" name="origin_place_city1" id="xxx">
												<option value="">省</option>
												<c:forEach items="${province }" var="uv">
													<c:if test="${info.origin_place_city1 == uv.province }">
														<option value="${uv.province }" selected="selected">${uv.province }</option>
													</c:if>
													<c:if test="${info.origin_place_city1 != uv.province }">
														<option value="${uv.province }">${uv.province }</option>
													</c:if>
												</c:forEach>
											</select> <select class="span2 city_select" name="origin_place_city2">
												<option value="">市</option>
												<c:if test="${info.origin_place_city2!=null and info.origin_place_city2!=''}">
													<option value="${info.origin_place_city2 }" selected="selected">${info.origin_place_city2 }</option>
												</c:if>
											</select> <select class="span2" name="origin_place_city3">
												<option value="">县</option>
												<c:if test="${info.origin_place_city3!=null and info.origin_place_city3!=''}">
													<option value="${info.origin_place_city3 }" selected="selected">${info.origin_place_city3 }</option>
												</c:if>
											</select>

										</div>
									</div>
									<div class="control-group">
										<label class="control-label"></label>
										<div class="controls">
											<span>提示：如需修改地区，请从省级地区开始选择</span>
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">出生地<span style="color: red">*</span></label>
										<div class="controls">
											<select class="span2 province_select" name="born_place_city1">
												<option value="">省</option>
												<c:forEach items="${province }" var="uv">
													<c:if test="${info.born_place_city1 == uv.province }">
														<option value="${uv.province }" selected="selected">${uv.province }</option>
													</c:if>
													<c:if test="${info.born_place_city1 != uv.province }">
														<option value="${uv.province }">${uv.province }</option>
													</c:if>
												</c:forEach>
											</select> <select class="span2 city_select" name="born_place_city2">
												<option value="">市</option>
												<c:if test="${info.born_place_city2!=null and info.born_place_city2!=''}">
													<option value="${info.born_place_city2 }" selected="selected">${info.born_place_city2 }</option>
												</c:if>
											</select> <select class="span2" name="born_place_city3">
												<option value="">县</option>
												<c:if test="${info.born_place_city3!=null and info.born_place_city3!=''}">
													<option value="${info.born_place_city3 }" selected="selected">${info.born_place_city3 }</option>
												</c:if>
											</select>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label"></label>
										<div class="controls">
											<span>提示：如需修改地区，请从省级地区开始选择</span>
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label">政治面貌<span style="color: red">*</span></label>
										<div class="controls">
											<select name="party_name">
												<option value="">请输入</option>
												<c:forEach items="${party }" var="uv">
													<c:if test="${info.party_name == uv.partyName }">
														<option value="${uv.partyName }" selected="selected">${uv.partyName }</option>
													</c:if>
													<c:if test="${info.party_name != uv.partyName }">
														<option value="${uv.partyName }" >${uv.partyName }</option>
													</c:if>
												</c:forEach>
											</select>
											注意：群众不需填写入党时间
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">入党时间<span style="color: red">*</span></label>
										<div class="controls">
											<select class="span2 year" name="party_year">
												<option value="">请输入</option>
												<c:forEach var="x" begin="1900" end="2020">
													<c:if test="${info.party_year == x }">
														<option value="${x}" selected="selected">${x}</option>
													</c:if>
													<c:if test="${info.party_year != x }">
														<option value="${x}">${x}</option>
													</c:if>
												</c:forEach>
											</select> / <select class="span2 month" name="party_month">
												<option value="">请输入</option>
												<c:forEach var="x" begin="1" end="12">
													<c:if test="${info.party_month == x }">
														<option value="${x}" selected="selected">${x}</option>
													</c:if>
													<c:if test="${info.born_month != x }">
														<option value="${x}">${x}</option>
													</c:if>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">参加工作时间<span style="color: red">*</span></label>
										<div class="controls">
											<select class="span2 year" name="work_year">
												<option value="">请输入</option>
												<c:forEach var="x" begin="1900" end="2020">
													<c:if test="${info.work_year == x }">
														<option value="${x}" selected="selected">${x}</option>
													</c:if>
													<c:if test="${info.work_year != x }">
														<option value="${x}">${x}</option>
													</c:if>
												</c:forEach>
											</select> / <select class="span2 month" name="work_month">
												<option value="">请输入</option>
												<c:forEach var="x" begin="1" end="12">
													<c:if test="${info.work_month == x }">
														<option value="${x}" selected="selected">${x}</option>
													</c:if>
													<c:if test="${info.born_month != x }">
														<option value="${x}">${x}</option>
													</c:if>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">来校时间<span style="color: red">*</span></label>
										<div class="controls">
											<select class="span2 year" name="school_year">
												<option value="">请输入</option>
												<c:forEach var="x" begin="1900" end="2020">
													<c:if test="${info.school_year == x }">
														<option value="${x}" selected="selected">${x}</option>
													</c:if>
													<c:if test="${info.school_year != x }">
														<option value="${x}">${x}</option>
													</c:if>
												</c:forEach>
											</select> / <select class="span2 month" name="school_month">
												<option value="">请输入</option>
												<c:forEach var="x" begin="1" end="12">
													<c:if test="${info.school_month == x }">
														<option value="${x}" selected="selected">${x}</option>
													</c:if>
													<c:if test="${info.school_month != x }">
														<option value="${x}">${x}</option>
													</c:if>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">专业技术职务</label>
										<div class="controls">
											<input type="text" placeholder="xxx" name="skill" value="${info.skill }">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">熟悉专业有何特长</label>
										<div class="controls">
											<input type="text" placeholder="xxx" name="talent" value="${info.talent }">
										</div>
									</div>


									<div class="control-group">
										<label class="control-label">全日制教育</label>
										<div class="controls"></div>
									</div>
									<div class="control-group">
										<label class="control-label">学历<span style="color: red">*</span></label>
										<div class="controls">
											<select name="education1">
												<option value="">请选择</option>
												<c:forEach items="${education }" var="uv">
													<c:if test="${uv.education == info.education1 }">
														<option value="${uv.education }" selected="selected">${uv.education }</option>
													</c:if>
													<c:if test="${uv.education != info.education1  }">
														<option value="${uv.education }">${uv.education }</option>
													</c:if>
												</c:forEach>
											</select> <span class="form_font">学位<span style="color: red">*</span></span> <select name="degree1">
												<option>请选择</option>
												<c:forEach items="${degree }" var="uv">
													<c:if test="${uv.degree == info.degree1 }">
														<option value="${uv.degree }" selected="selected">${uv.degree }</option>
													</c:if>
													<c:if test="${uv.degree != info.degree1 }">
														<option value="${uv.degree }">${uv.degree }</option>
													</c:if>
												</c:forEach>
											</select> <span class="form_font">毕业院校及专业<span style="color: red">*</span></span> <input type="text" placeholder="xx大学xx系xx专业" name="school1" value="${info.school1 }">
										</div>
									</div>


									<div class="control-group">
										<label class="control-label">在职教育</label>
										<div class="controls"></div>
									</div>
									<div class="control-group">
										<label class="control-label">学历</label>
										<div class="controls">
											<select name="education2">
												<option value="">请选择</option>
												<c:forEach items="${education }" var="uv">
													<c:if test="${uv.education == info.education2 }">
														<option value="${uv.education }" selected="selected">${uv.education }</option>
													</c:if>
													<c:if test="${uv.education != info.education2  }">
														<option value="${uv.education }">${uv.education }</option>
													</c:if>
												</c:forEach>
											</select> <span class="form_font">学位</span> <select name="degree2">
												<option value="">请选择</option>
												<c:forEach items="${degree }" var="uv">
													<c:if test="${uv.degree == info.degree2 }">
														<option value="${uv.degree }" selected="selected">${uv.degree }</option>
													</c:if>
													<c:if test="${uv.degree != info.degree2 }">
														<option value="${uv.degree }">${uv.degree }</option>
													</c:if>
												</c:forEach>
											</select> <span class="form_font">毕业院校及专业</span> <input type="text" placeholder="xx大学xx系xx专业" name="school2" value="${info.school2 }">
										</div>
									</div>


									<div class="control-group">
										<label class="control-label">联系电话<span style="color: red">*</span></label>
										<div class="controls">
											<input type="text" placeholder="xxx" name="phone" value="${info.phone }">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">E-mail<span style="color: red">*</span></label>
										<div class="controls">
											<input type="text" placeholder="xxx" name="email" value="${info.email }">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">现任职务<span style="color: red">*</span></label>
										<div class="controls">
											<select name="organization">
												<option value="">选择职务所在单位(重要!)</option>
												<c:forEach items="${organization }" var="uv">
													<c:if test="${uv.name==info.organization}">
														<option value="${uv.name }" selected="selected">${uv.name }</option>
													</c:if>
													<c:if test="${uv.name != info.organization}">
														<option value="${uv.name }">${uv.name }</option>
													</c:if>
												</c:forEach>
											</select> <input type="text" placeholder="你的具体职务是?" name="job" value="${info.job }" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">任职时间<span style="color: red">*</span></label>
										<div class="controls">
											<input type="text" name="presently_job_time" placeholder="格式比如  2012.3" value="${info.presently_job_time }">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">职务级别<span style="color: red">*</span></label>
										<div class="controls">
											<select name="presently_level">
												<option value="">请选择级别</option>
												<option value="副部级" <c:if test="${info.presently_level=='副部级' }">selected</c:if>>副部级</option>
												<option value="正厅级" <c:if test="${info.presently_level=='正厅级' }">selected</c:if>>正厅级</option>
												<option value="副厅级" <c:if test="${info.presently_level=='副厅级' }">selected</c:if>>副厅级</option>
												<option value="正处级" <c:if test="${info.presently_level=='正处级' }">selected</c:if>>正处级</option>
												<option value="副厅级" <c:if test="${info.presently_level=='副厅级' }">selected</c:if>>副厅级</option>
												<option value="副处级" <c:if test="${info.presently_level=='副处级' }">selected</c:if>>副处级</option>
												<option value="正科级/副处级" <c:if test="${info.presently_level=='正科级/副处级' }">selected</c:if>>正科级/副处级</option>
												<option value="正科级" <c:if test="${info.presently_level=='正科级' }">selected</c:if>>正科级</option>
												<option value="科级" <c:if test="${info.presently_level=='科级' }">selected</c:if>>科级</option>
												<option value="系级、副处级" <c:if test="${info.presently_level=='系级、副处级' }">selected</c:if>>系级、副处级</option>
												<option value="聘任" <c:if test="${info.presently_level=='聘任' }">selected</c:if>>聘任</option>
												<option value="无 " <c:if test="${info.presently_level=='无' }">selected</c:if>>无</option>
												<option value="兼" <c:if test="${info.presently_level=='兼' }">selected</c:if>>兼</option>
											</select>			
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">级别时间<span style="color: red">*</span></label>
										<div class="controls">
											<input type="text" name="presently_level_time" placeholder="格式比如  2012.3" value="${info.presently_level_time }">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">简历<span style="color: red">*</span></label>
										<div class="controls">
											<textarea class="span10" rows="8" name="cv" id="cv">${info.cv }</textarea>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">奖惩情况</label>
										<div class="controls">
											<textarea class="span10" rows="5" name="reward_and_punishment">${info.reward_and_punishment }</textarea>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">年度考核结果</label>
										<div class="controls">
											<textarea class="span10" rows="5" name="check_result">${info.check_result }</textarea>
										</div>
									</div>
									<div class="control-group">
										<table class="table table-bordered">
											<caption>家庭主要成员及重要社会关系</caption>
											以下信息若有,则每行必须填写完整
											<thead>
												<tr>
													<th>称谓</th>
													<th>姓名</th>
													<th>出生年月</th>
													<th>政治面貌</th>
													<th>工作单位及职务</th>
													<th>操作</th>
												</tr>
											</thead>
											<tbody>
												<tr id="family_first" style="display: none">
													<td><input type="text" placeholder="xxx" style="width: 40px" name="family_alias">
													</td>
													<td><input type="text" placeholder="xxx" style="width: 80px" name="family_name">
													</td>
													<td><select class="span3 year" name="family_born_year">
															<option value="">请输入</option>
															<c:forEach var="x" begin="1900" end="2020">
																<option value="${x}">${x}</option>
															</c:forEach>
													</select> / <select class="span3 month" name="family_born_month">
															<option value="">请输入</option>
															<c:forEach var="x" begin="1" end="12">
																<option value="${x}">${x}</option>
															</c:forEach>
													</select>
													</td>
													<td>
													<select class="" name="political" style="width:100px">
														<option value="">请选择</option>
														<c:forEach items="${party }" var="uv">
															<option value="${uv.partyName }" >${uv.partyName }</option>
														</c:forEach>
													</select>
													</td>
													<td><input type="text" placeholder="xxx" style="width: 300px" name="work_organization">
													</td>
													<td><button type="button" class="btn btn-primary family_delete">删除</button></td>
												</tr>
												<c:forEach items="${family }" var="uv">
													<tr>
														<td><input type="text" placeholder="xxx" style="width: 40px" name="family_alias" value="${uv.family_alias}">
														</td>
														<td><input type="text" placeholder="xxx" style="width: 80px" name="family_name" value="${uv.family_name }">
														</td>
														<td><select class="span4 year" name="family_born_year">
																<option value="">请输入</option>
																<c:forEach var="x" begin="1900" end="2020">
																	<c:if test="${uv.family_born_year == x }">
																		<option value="${x}" selected="selected">${x}</option>
																	</c:if>
																	<c:if test="${uv.family_born_year != x }">
																		<option value="${x}">${x}</option>
																	</c:if>
																</c:forEach>
														</select> / <select class="span4 month" name="family_born_month">
																<option value="">请输入</option>
																<c:forEach var="x" begin="1" end="12">
																	<c:if test="${uv.family_born_month == x }">
																		<option value="${x}" selected="selected">${x}</option>
																	</c:if>
																	<c:if test="${uv.family_born_month != x }">
																		<option value="${x}">${x}</option>
																	</c:if>
																</c:forEach>
														</select>
														</td>
														<td>
															<select class="" name="political" style="width:100px">
																<option value="">请选择</option>
																<c:forEach items="${party }" var="ss">
																	<c:if test="${ss.partyName == uv.political}">
																		<option value="${ss.partyName }" selected="selected">${ss.partyName }</option>
																	</c:if>
																	<c:if test="${ss.partyName != uv.political}">
																		<option value="${ss.partyName }" >${ss.partyName }</option>
																	</c:if>
																</c:forEach>
															</select>
														</td>
														<td><input type="text" placeholder="xxx" style="width: 300px" name="work_organization" value="${uv.work_organization }">
														</td>
														<td><button type="button" class="btn btn-primary family_delete">删除</button></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										<button id="familyBtn" type="button" class="btn btn-primary pull-right">新增一条数据</button>
									</div>
								</form>
							</div>
						</div>

						<div class="form-actions">
							<button type="button" class="btn btn-primary" id="submit">
								<i class="icon-ok"></i> 保存所有修改结果
							</button>
							<button type="button" class="btn btn-primary" id="download">
								<i class="icon-arrow-down"></i> 下载报名样表
							</button>
						</div>

					</div>
				</div>
				<!-- END PAGE CONTENT-->
			</div>
			<!-- END PAGE CONTAINER-->
		</div>
		<!-- END PAGE -->
	</div>
	<!-- BEGIN FOOTER -->
	<div class="footer">
		<div class="footer-inner">Copyright 2016 © 厦门大学信息学院</div>
		<div class="footer-tools">
			<span class="go-top"> <i class="icon-angle-up"></i> </span>
		</div>
	</div>
	<!-- END FOOTER -->
	
	<!--person info Modal -->
	<div class="modal fade" id="person_info" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						
					</button>
					<h4 class="modal-title">个人账户信息</h4>
				</div>
				<div class="modal-body">
					用户名：${username } </br>
					身份证: ${identify } </br>
					邮箱: ${email } </br>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>

	<script src="../resource/BackstageCommon/js/jquery-1.11.2.min.js" type="text/javascript"></script>
	<script src="../resource/BackstageCommon/js/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="../resource/BackstageCommon/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="../resource/BackstageCommon/js/bootstrap.min.js" type="text/javascript"></script>
	<!--[if lt IE 9]>
<script src="../resource/BackstageCommon/js/excanvas.min.js"></script>
<script src="../resource/BackstageCommon/js/respond.min.js"></script>
<![endif]-->
	<!-- END CORE PLUGINS -->
	<script src="../resource/BackstageCommon/js/app.js"></script>
	<script src="../resource/js/bootstrap-fileupload.js" type="text/javascript"></script>
	<script Charset="UTF-8">
		//init
		jQuery(document).ready(function() {
			// initiate layout and plugins
			App.init();

		});

		//固定head,sidebar,footer
		setTimeout(function() {
			$(".sidebar-option").trigger("change");
		}, 10);

		//家庭成员信息添加和删除
		$("#family_first").siblings('tr').each(function() {
			family_delete();
		});
		$("#familyBtn").click(function() {
			var table = $("#familyBtn").siblings('table');
			var str = $("#family_first").html();
			str = "<tr>" + str + "</tr>";
			table.find('tbody').append(str);
			family_delete();
		});
		function family_delete() {
			$(".family_delete").click(function() {
				$(this).parents('tr').remove();
			});
		}

		//下载word
		$("#download").click(
				function() {
					$.ajax({
						url : 'download_word.do',
						type : 'post',
						data : {
							download : 'last'
						},
						dataType : 'text',
						success : function(feedback) {
							if(feedback!='success'){
								window.location.href=feedback;
								return;
							}
							alert(feedback);
						},
						error : function(xhr, ajaxOptions, thrownError) {
							if (xhr.readyState == 0 || xhr.status == 0) {
								// not really an error
								return;
							} else {
								alert("XHR Status = " + xhr.status);
								alert("Thrown Error = " + thrownError);
								alert("AjaxOptions = " + ajaxOptions)
							}
						}
					});
				});

		//简历提示文字
		var cv_str = "请使用下面的格式填写简历\n"
				+ "1983.09—1987.07  **大学**系**专业学习，获**学学士学位\n"
				+ "1987.09—1990.07  **大学**系**专业研究生学习，获**学硕士学位\n"
				+ "1990.09—1993.07  **大学**处科员\n"
				+ "1993.08—1998.04  **大学**学院团委副书记 副科级\n"
				+ "1998.05—2002.03  **大学**学院团委书记 正科级\n"
				+ "2002.03—         **大学**处秘书 正科级（其间：2003.09—2006.07  **大学**系**专业在职研究生学习，"
				+ "获**学博士学位）";
		if ($("#cv").val() == "") {
			$("#cv").val(cv_str);
		}
		$("#cv").keyup(function() {
			if ($("#cv").val() == "") {
				$("#cv").val(cv_str);
			}
		});

		//省、市、县三级联动
		$(".province_select").change(
				function() {
					var str1 = "<option value=''>市</option>";
					var str2 = "<option value=''>县</option>";
					$($(this).next()).empty().append(str1);
					$($($(this).next()).next()).empty().append(str2);

					if ($(this).val() != "") {
						var data = $(this).val();
						var thiz = this;
						$.ajax({
							url : 'update_city.do',
							type : 'post',
							data : {
								province : data
							},
							dataType : 'text',
							scriptCharset : 'utf-8',
							success : function(feedback) {
								var ss = decodeURIComponent(feedback.replace(
										/\+/g, '%20')); //必须编码，否则中文乱码，MD网上查好久
								$($(thiz).next()).append(ss);
							},
							error : function(xhr, ajaxOptions, thrownError) {
								if (xhr.readyState == 0 || xhr.status == 0) {
									// not really an error
									return;
								} else {
									alert("XHR Status = " + xhr.status);
									alert("Thrown Error = " + thrownError);
									alert("AjaxOptions = " + ajaxOptions)
								}
							}
						});
					}
				});
		$(".city_select").change(
				function() {

					var str2 = "<option value=''>县</option>";
					$($(this).next()).empty().append(str2);

					if ($(this).val() != "") {
						var data = $(this).val();
						var thiz = this;
						$.ajax({
							url : 'update_town.do',
							type : 'post',
							data : {
								city : data
							},
							dataType : 'text',
							scriptCharset : 'utf-8',
							success : function(feedback) {
								var ss = decodeURIComponent(feedback.replace(
										/\+/g, '%20')); //必须编码，否则中文乱码，MD网上查好久
								$($(thiz).next()).append(ss);
							},
							error : function(xhr, ajaxOptions, thrownError) {
								if (xhr.readyState == 0 || xhr.status == 0) {
									// not really an error
									return;
								} else {
									alert("XHR Status = " + xhr.status);
									alert("Thrown Error = " + thrownError);
									alert("AjaxOptions = " + ajaxOptions)
								}
							}
						});
					}
				});

		$("#submit").click(function() {
			//创建FormData对象
			var photo_data = new FormData();
			//为FormData对象添加数据

			//这里遍历前面的<input type=file>,里的所有文件，逐一加进FormData对象，这里的'photo_file'是后台要获取到的名称
			$.each($('#photo')[0].files, function(i, file) {
				photo_data.append('photo_file', file);
			});

			//ajax发送图片到服务器
			$.ajax({
				url : 'staff_photo_data.do',
				type : 'post',
				data : photo_data,
				dataType : 'text', //这里默认是text, 如果后台返回类型不对将进入error回调函数
				contentType : false, //告诉jquery不要对数据进行处理，处理之后会吧文件类型数据损坏
				processData : false,
				success : function(feedback) {
					if (feedback == "success") {
						alert("图片保存成功");
					} else {
						alert(feedback);
					}
				},

				error : function(xhr, ajaxOptions, thrownError) {
					if (xhr.readyState == 0 || xhr.status == 0) {
						// not really an error
						return;
					} else {
						if (xhr.status == 400) {
							alert("没有上传新照片");
							return;
						}
						alert("XHR Status = " + xhr.status);
						alert("Thrown Error = " + thrownError);
						alert("AjaxOptions = " + ajaxOptions);
					}
				}
			});

			//表单文本数据序列化
			var form_data = $("#info_form").serialize();
			//alert(form_data);
			$.ajax({
				url : 'staff_form_data.do',
				type : 'post',
				data : form_data,
				dataType : 'text',
				success : function(feedback) {
					var tip_info = decodeURIComponent(feedback.replace(/\+/g, '%20'));
					alert(tip_info);
				},
				error : function(xhr, ajaxOptions, thrownError) {
					if (xhr.readyState == 0 || xhr.status == 0) {
						// not really an error
						return;
					} else {
						alert("XHR Status = " + xhr.status);
						alert("Thrown Error = " + thrownError);
						alert("AjaxOptions = " + ajaxOptions);
					}
				}
			});
		});
	</script>
</body>
</html>