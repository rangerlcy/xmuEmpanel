<!-- 教职工信息分页和查询ajax刷新div -->

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="/WEB-INF/tlds/empanel-tag.tld" prefix="ide"%>


<form class="form-horizontal" id="searchUserForm">
	<div class="control-group">
		<label class="control-label">姓名</label>
		<div class="controls">
			<input type="text" id="staffName" value="${staffName }"> <span style="font-size: 15px">单位</span> <select id="org">
				<option value="">请选择单位</option>
				<c:forEach items="${org }" var="uv">
					<c:if test="${uv.name == orgName}">
						<option value="${uv.name }" selected="selected">${uv.name }</option>
					</c:if>
					<c:if test="${uv.name != orgName}">
						<option value="${uv.name }">${uv.name }</option>
					</c:if>
				</c:forEach>
			</select>
			<button type="button" class="btn blue" id="search">
				<i class=" icon-search"></i>搜索
			</button>
		</div>
	</div>
</form>

<table class="table table-bordered">
	<thead>
		<tr>
			<th>证件号</th>
			<th>姓名</th>
			<th>性别</th>
			<th>出生日期</th>
			<th>现任单位</th>
			<th>现职务</th>
			<th>操作</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${pageList.result }" var="uv">
			<tr>
				<th>${uv.user.identifyNum }</th>
				<th>${uv.name }</th>
				<th>${uv.sex }</th>
				<th>${uv.birth }</th>
				<th>${uv.organization.name }</th>
				<th>${uv.presentlyJob }</th>
				<th TID="${uv.id }"><a class="operator resetPSW">重置密码</a> <a class="operator info">个人资料及其历史报名</a>
				</th>
			</tr>
		</c:forEach>
	</tbody>
</table>

<ide:page page="${pageList }" pageId="userListPage" searchForm="searchUserForm"></ide:page>
