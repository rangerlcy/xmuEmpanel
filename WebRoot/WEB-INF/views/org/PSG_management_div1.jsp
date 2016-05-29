<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="/WEB-INF/tlds/empanel-tag.tld" prefix="ide"%>

<!-- 用于ajax局部刷新div -->

<form class="form-horizontal" id="searchUserForm">
	<div class="control-group">
		<label class="control-label">考察组名称</label>
		<div class="controls">
			<input type="text" id="PSGName" value="${PSGName }"> <span style="font-size: 15px">所在单位</span> <select id="org">
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
			<th>考察组名称</th>
			<th>考察组所在单位</th>
			<th>组长</th>
			<th>联络员</th>
			<th>组员</th>
			<th>操作</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${pageList.result }" var="uv">
			<tr>
				<td>${uv.name }</td>
				<td>${uv.organization.name }</td>
				<td><c:forEach items="${uv.persons }" var="per">
						<c:if test="${per.type == '组长' }">
							<span style="font-weight: bold;">${per.studygroupPersonStore.name}</span>
							<br>
						</c:if>
					</c:forEach></td>
				<td><c:forEach items="${uv.persons }" var="per">
						<c:if test="${per.type == '联络员' }">
							<span style="font-weight: bold;">${per.studygroupPersonStore.name}</span> 电话:${per.studygroupPersonStore.tel} 邮箱:${per.studygroupPersonStore.email} <br>
						</c:if>
					</c:forEach></td>
				<td><c:forEach items="${uv.persons }" var="per">
						<c:if test="${per.type == '组员' }">
							<span style="font-weight: bold;">${per.studygroupPersonStore.name}</span>
							<br>
						</c:if>
					</c:forEach></td>
				<td>
					<button type="button" class="btn purple reset_password" TID="${uv.id }">重置密码</button>
					<button type="button" class="btn red delete" TID="${uv.id }">删除</button></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<ide:page page="${pageList }" pageId="userListPage" searchForm="searchUserForm"></ide:page>

<div class="form-actions">
	<button type="button" class="btn blue" id="add">
		<i class="icon-plus "></i> 新增考察组
	</button>
</div>
