<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
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
					<li class="dropdown user"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> <img alt="" src="../resource/BackstageCommon/image/photo.jpg" /> <span class="username">Bob Nilson</span> <i class="icon-angle-down"></i> </a>
						<ul class="dropdown-menu">
							<li><a href="extra_profile.html"><i class="icon-user"></i> 个人信息</a>
							</li>
							<li class="divider"></li>
							<li><a href="login.html"><i class="icon-key"></i> 注销</a>
							</li>
						</ul></li>
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
					<div class="sidebar-toggler hidden-phone"></div> <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
				</li>
				<li class="start"><a href="staff_index.do"> <i class="icon-home"></i> <span class="title">首页</span> </a></li>
				<li class="active"><a href="javascript:;"> <i class="icon-user"></i> <span class="title">个人基本信息</span> <span class="selected"></span> <span class="arrow open"></span> </a>
					<ul class="sub-menu">
						<li class="active"><a href="staff_info.do">信息查看和编辑</a></li>
					</ul></li>

				<li class=" "><a href="javascript:;"> <i class="icon-table"></i> <span class="title">选任报名</span> <span class="arrow"></span> </a>

					<ul class="sub-menu">
						<li class=""><a href="staff_register.do">所有可报名选任信息</a></li>
					</ul></li>
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
							个人信息 <small>在本页面您可以随时对您的个人信息进行查看和修改</small>
						</h3>
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="staff_index.do">首页</a> <span class="icon-angle-right"></span></li>
							<li><a href="#">个人基本信息</a> <span class="icon-angle-right"></span>
							</li>
							<li><a href="#">信息查看</a>
							</li>
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
									<i class="icon-reorder"></i>以下是您的信息
								</div>
							</div>
							<div class="portlet-body form">
								<form class="form-horizontal" id="info_form">
									<div class="control-group">

										<label class="control-label">照片</label>

										<div class="controls">
											<div class="fileupload fileupload-new" data-provides="fileupload">
												<div class="fileupload-new thumbnail" style="width: 130px; height: 150px;">
													<img src="" alt="" />
												</div>
												<div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
												<div>
													<span class="btn btn-file"><span class="fileupload-new">选择图片</span> <span class="fileupload-exists">更换</span> <input id="photo" name="photo" type="file" class="default" /> </span> <a href="#" class="btn fileupload-exists" data-dismiss="fileupload">删除</a>
												</div>
											</div>
											<span class="label label-important">注意!</span> <span> 上传图片仅支持IE10以上版本浏览器，图片格式为，图片大小为 </span>
										</div>

									</div>
									<div class="control-group">
										<label class="control-label">姓名</label>
										<div class="controls">
											<input type="text" placeholder="xxx" name="name">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">性别</label>
										<div class="controls">
											<select class="span2" name="gender">
												<option value="男">男</option>
												<option value="女">女</option>
											</select>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">出生年月</label>
										<div class="controls">
											<select class="span2 year" name="born_year">
												<option value="">请输入</option>
											</select> / <select class="span2 month" name="born_month">
												<option value="">请输入</option>
											</select> / <select class="span2 day" name="born_day">
												<option value="">请输入</option>
											</select>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">民族</label>
										<div class="controls">
											<select class="nation">
												<option value="">请选择</option>
											</select>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">籍贯</label>
										<div class="controls">
											<input type="text" placeholder="xxx" name="place">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">出生地</label>
										<div class="controls">
											<input type="text" placeholder="xxx" name="bornplace">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">入党时间</label>
										<div class="controls">
											<select class="span2 year" name="party_year">
												<option value="">请输入</option>
											</select> / <select class="span2 month" name="party_month">
												<option value="">请输入</option>
											</select> / <select class="span2 day" name="party_day">
												<option value="">请输入</option>
											</select>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">参加工作时间</label>
										<div class="controls">
											<select class="span2 year" name="work_year">
												<option value="">请输入</option>
											</select> / <select class="span2 month" name="work_month">
												<option value="">请输入</option>
											</select> / <select class="span2 day" name="work_day">
												<option value="">请输入</option>
											</select>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">来校时间</label>
										<div class="controls">
											<select class="span2 year" name="school_year">
												<option value="">请输入</option>
											</select> / <select class="span2 month" name="school_month">
												<option value="">请输入</option>
											</select> / <select class="span2 day" name="school_day">
												<option value="">请输入</option>
											</select>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">专业技术职务</label>
										<div class="controls">
											<input type="text" placeholder="xxx" name="skill">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">熟悉专业有何特长</label>
										<div class="controls">
											<input type="text" placeholder="xxx" name="talent">
										</div>
									</div>
									
									
									<div class="control-group">
										<label class="control-label">全日制教育</label>
										<div class="controls"></div>
									</div>
									<div class="control-group">
										<label class="control-label">学历</label>
										<div class="controls">
											<input type="text" placeholder="填写学历" name="education1"> <span class="form_font">学位</span> <input type="text" placeholder="填写学位" name="degree1"> <span class="form_font">毕业院校及专业</span> <input type="text" placeholder="xxx" name="school1">
										</div>
									</div>
									
									
									<div class="control-group">
										<label class="control-label">在职教育</label>
										<div class="controls">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">学历</label>
										<div class="controls">
											<input type="text" placeholder="填写学历" name="education2"> <span class="form_font">学位</span> <input type="text" placeholder="填写学位" name="degree2" > <span class="form_font">毕业院校及专业</span> <input type="text" placeholder="xxx" name="school2">
										</div>
									</div>
									
									
									<div class="control-group">
										<label class="control-label">联系电话</label>
										<div class="controls">
											<input type="text" placeholder="xxx" name="phone">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">E-mail</label>
										<div class="controls">
											<input type="text" placeholder="xxx" name="email">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">现任职务</label>
										<div class="controls">
											<select name="organization">
												<option value="">选择职务所在单位(重要!)</option>
											</select>
											<input type="text" placeholder="你的具体职务是?" name="job"/>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">竞聘职务</label>
										<div class="controls">
											<input class="span6" type="text" placeholder="xxx" name="employe_job">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">简历</label>
										<div class="controls">
											<textarea class="span10 CV" rows="8" name="cv"></textarea>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">奖惩情况</label>
										<div class="controls">
											<textarea class="span10" rows="5" name="reward_and_punishment"></textarea>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">年度考核结果</label>
										<div class="controls">
											<textarea class="span10" rows="5" name="check_result"></textarea>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">任免理由</label>
										<div class="controls">
											<textarea class="span10" rows="5" name="appoint_reason"></textarea>
										</div>
									</div>
									<div class="control-group">
										<table class="table table-bordered">
											<caption>家庭主要成员及重要社会关系</caption>
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
													<td><input type="text" placeholder="xxx" style="width: 40px" name="family_alias"></td>
													<td><input type="text" placeholder="xxx" style="width: 80px" name="family_name"></td>
													<td><select class="span3 year" name="family_born_year">
															<option value="">请输入</option>
													</select> / <select class="span3 month" name="family_born_month">
															<option value="">请输入</option>
													</select> / <select class="span3 day" name="family_born_day">
															<option value="">请输入</option>
													</select></td>
													<td><input type="text" placeholder="xxx" style="width: 80px" name="political"></td>
													<td><input type="text" placeholder="xxx" style="width: 300px" name="work_organization"></td>
													<td><button type="button" class="btn btn-primary family_delete">删除</button>
													</td>
												</tr>
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
							<button type="button" class="btn btn-primary" id="test">
								<i class="icon-ok"></i> 查看表单序列化数据
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

	<script src="../resource/BackstageCommon/js/jquery-1.11.2.min.js" type="text/javascript"></script>
	<script src="../resource/BackstageCommon/js/bootstrap.min.js" type="text/javascript"></script>
	<!--[if lt IE 9]>
<script src="../resource/BackstageCommon/js/excanvas.min.js"></script>
<script src="../resource/BackstageCommon/js/respond.min.js"></script>
<![endif]-->
	<!-- END CORE PLUGINS -->
	<script src="../resource/BackstageCommon/js/app.js"></script>
	<script src="../resource/js/bootstrap-fileupload.js" type="text/javascript"></script>
	<script>
		//init
		jQuery(document).ready(function() {
			// initiate layout and plugins
			App.init();

		});

		for ( var i = 1990; i <= 2010; i++) {
			$(".year").append("<option value="+i+">" + i + "</option>");
		}
		for (i = 1; i <= 12; i++) {
			$(".month").append("<option value="+i+">" + i + "</option>");
		}
		for (i = 1; i <= 31; i++) {
			$(".day").append("<option value="+i+">" + i + "</option>");
		}

		setTimeout(function() {
			$(".sidebar-option").trigger("change");
		}, 500);

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
		
		$("#test").click(function(){
			var form_data = $("#info_form").serialize();
			//alert(form_data);
			$.ajax({
				url : 'staff_form_data.do',
				type : 'post',
				data : form_data,
				dataType : 'text',
				success: function(feedback){
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

		//56个民族
		var nation_str = "<option value=\"汉族\">汉族</option>"
				+ "<option value=\"蒙古族\">蒙古族</option>"
				+ "<option value=\"彝族\">彝族</option>"
				+ "<option value=\"侗族\">侗族</option>"
				+ "<option value=\"哈萨克族\">哈萨克族</option>"
				+ "<option value=\"畲族\">畲族</option>"
				+ "<option value=\"纳西族\">纳西族</option>"
				+ "<option value=\"仫佬族\">仫佬族</option>"
				+ "<option value=\"仡佬族\">仡佬族</option>"
				+ "<option value=\"怒族\">怒族</option>"
				+ "<option value=\"保安族\">保安族</option>"
				+ "<option value=\"鄂伦春族\">鄂伦春族</option>"
				+ "<option value=\"回族\">回族</option>"
				+ "<option value=\"壮族\">壮族</option>"
				+ "<option value=\"瑶族\">瑶族</option>"
				+ "<option value=\"傣族\">傣族</option>"
				+ "<option value=\"高山族\">高山族</option>"
				+ "<option value=\"景颇族\">景颇族</option>"
				+ "<option value=\"羌族\">羌族</option>"
				+ "<option value=\"锡伯族\">锡伯族</option>"
				+ "<option value=\"乌孜别克族\">乌孜别克族</option>"
				+ "<option value=\"裕固族\">裕固族</option>"
				+ "<option value=\"赫哲族\">赫哲族</option>"
				+ "<option value=\"藏族\">藏族</option>"
				+ "<option value=\"布依族\">布依族</option>"
				+ "<option value=\"白族\">白族</option>"
				+ "<option value=\"黎族\">黎族</option>"
				+ "<option value=\"拉祜族\">拉祜族</option>"
				+ "<option value=\"柯尔克孜族\">柯尔克孜族</option>"
				+ "<option value=\"布朗族\">布朗族</option>"
				+ "<option value=\"阿昌族\">阿昌族</option>"
				+ "<option value=\"俄罗斯族\">俄罗斯族</option>"
				+ "<option value=\"京族\">京族</option>"
				+ "<option value=\"门巴族\">门巴族</option>"
				+ "<option value=\"维吾尔族\">维吾尔族</option>"
				+ "<option value=\"朝鲜族\">朝鲜族</option>"
				+ "<option value=\"土家族\">土家族</option>"
				+ "<option value=\"傈僳族\">傈僳族</option>"
				+ "<option value=\"水族\">水族</option>"
				+ "<option value=\"土族\">土族</option>"
				+ "<option value=\"撒拉族\">撒拉族</option>"
				+ "<option value=\"普米族\">普米族</option>"
				+ "<option value=\"鄂温克族\">鄂温克族</option>"
				+ "<option value=\"塔塔尔族\">塔塔尔族</option>"
				+ "<option value=\"珞巴族\">珞巴族</option>"
				+ "<option value=\"苗族\">苗族</option>"
				+ "<option value=\"满族\">满族</option>"
				+ "<option value=\"哈尼族\">哈尼族</option>"
				+ "<option value=\"佤族\">佤族</option>"
				+ "<option value=\"东乡族\">东乡族</option>"
				+ "<option value=\"达斡尔族\">达斡尔族</option>"
				+ "<option value=\"毛南族\">毛南族</option>"
				+ "<option value=\"塔吉克族\">塔吉克族</option>"
				+ "<option value=\"德昂族\">德昂族</option>"
				+ "<option value=\"独龙族\">独龙族</option>"
				+ "<option value=\"基诺族\">基诺族</option>";
		$(".nation").append(nation_str);
	</script>
</body>
</html>