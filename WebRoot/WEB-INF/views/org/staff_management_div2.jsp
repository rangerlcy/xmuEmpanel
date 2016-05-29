<!-- 教职工个人详细信息及历史报名ajax刷新div -->

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="/WEB-INF/tlds/empanel-tag.tld" prefix="ide"%>


<c:if test="${empty info }">
							暂无个人资料详情
						</c:if>
<c:if test="${!empty info && info.name !='' }">
	<div class="portlet box blue">
		<div class="portlet-title">
			<div class="caption">
				<i class="icon-user"></i>${info.name }的个人资料
			</div>
			<div class="tools">
				<a href="javascript:;" class="collapse"></a>
			</div>
		</div>
		<div class="portlet-body">
			<form class="form-horizontal" id="searchUserForm">
				<div class="control-group">
					<label class="control-label">照片</label>
					<div class="controls" style="max-width: 200px; max-height: 150px;">
						<img alt="" src="${info.picUrl } ">
					</div>
				</div>

				<div class="control-group">
					<label class="control-label">姓名</label>
					<div class="controls">
						<input type="text" name="name" value="${info.name }" readonly="readonly">
					</div>
				</div>

				<div class="control-group">
					<label class="control-label">性别</label>
					<div class="controls">
						<input type="text" name="name" value="${info.sex }" readonly="readonly">
					</div>
				</div>

				<div class="control-group">
					<label class="control-label">出生年月</label>
					<div class="controls">
						<input type="text" name="name" value="${info.birth }" readonly="readonly">
					</div>
				</div>

				<div class="control-group">
					<label class="control-label">民族</label>
					<div class="controls">
						<input type="text" name="name" value="${info.nationality }" readonly="readonly">
					</div>
				</div>

				<div class="control-group">
					<label class="control-label">籍贯</label>
					<div class="controls">
						<input type="text" name="name" value="${info.nativePlace }" readonly="readonly">
					</div>
				</div>

				<div class="control-group">
					<label class="control-label">出生地</label>
					<div class="controls">
						<input type="text" name="name" value="${info.birthPlace }" readonly="readonly">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">政治面貌</label>
					<div class="controls">
						<input type="text" name="name" value="${info.partyName }" readonly="readonly">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">入党时间</label>
					<div class="controls">
						<input type="text" name="name" value="${info.joinPartyTime }" readonly="readonly">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">参加工作时间</label>
					<div class="controls">
						<input type="text" name="name" value="${info.workTime }" readonly="readonly">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">来校时间</label>
					<div class="controls">
						<input type="text" name="name" value="${info.collegeTime }" readonly="readonly">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">专业技术职务</label>
					<div class="controls">
						<input type="text" name="name" value="${info.specialJob }" readonly="readonly">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">熟悉专业有何特长</label>
					<div class="controls">
						<input type="text" name="name" value="${info.specialSkill }" readonly="readonly">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">全日制教育</label>
					<div class="controls"></div>
				</div>
				<div class="control-group">
					<label class="control-label">学历学位及毕业院校</label>
					<div class="controls">
						<input type="text" name="name" value="${info.fullTimeEducationRecord }-${info.fullTimeEducationLevel }-${info.fullTimeEducationCollege }" readonly="readonly">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">在职教育</label>
					<div class="controls"></div>
				</div>
				<div class="control-group">
					<label class="control-label">学历学位及毕业院校</label>
					<div class="controls">
						<input type="text" name="name" value="${info.incumbencyEducationRecord }-${info.incumbencyEducationLevel }-${info.incumbencyEducationCollege }" readonly="readonly">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">联系电话</label>
					<div class="controls">
						<input type="text" name="name" value="${info.tel }" readonly="readonly">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">邮箱</label>
					<div class="controls">
						<input type="text" name="name" value="${info.email }" readonly="readonly">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">现任职务</label>
					<div class="controls">
						<input type="text" name="name" value="${info.presentlyJob }" readonly="readonly">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">简历<span style="color: red">*</span>
					</label>
					<div class="controls">
						<textarea class="span10" rows="8" readonly="readonly">${info.resume }</textarea>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">奖惩情况</label>
					<div class="controls">
						<textarea class="span10" rows="5" readonly="readonly">${info.punishReward }</textarea>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">年度考核结果</label>
					<div class="controls">
						<textarea class="span10" rows="5" readonly="readonly">${info.appraisalResult }</textarea>
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
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${family }" var="uv">
								<tr>
									<td>${uv.appellation }</td>
									<td>${uv.name }</td>
									<td>${uv.birth }</td>
									<td>${uv.politics }</td>
									<td>${uv.job }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</form>
		</div>
	</div>

	<!-- 历史报名情况 -->
	<c:if test="${empty history }">
		<div class="portlet box blue">
			<div class="portlet-title">
				<div class="caption">
					<i class="icon-user"></i>${info.name }历史报名情况
				</div>
				<div class="tools">
					<a href="javascript:;" class="collapse"></a>
				</div>
			</div>
			<div class="portlet-body">
				<table class="table table-bordered">
					<caption>暂无历史报名</caption>
				</table>
			</div>
		</div>
	</c:if>

	<c:if test="${!empty history }">
		<div class="portlet box blue">
			<div class="portlet-title">
				<div class="caption">
					<i class="icon-user"></i>${info.name }历史报名情况
				</div>
				<div class="tools">
					<a href="javascript:;" class="collapse"></a>
				</div>
			</div>
			<div class="portlet-body">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>选任名称</th>
							<th>选任类型</th>
							<th>报名开始时间</th>
							<th>报名岗位</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${history }" var="uv">
							<tr>
								<th>${uv.empanel.name }</th>
								<th>${uv.empanel.type }</th>
								<th>${uv.empanel.startTime }</th>
								<th><c:forEach items="${uv.jobList }" var="jobSet">
														单位：${jobSet.empanelJob.organization.name } &nbsp&nbsp 岗位：${jobSet.empanelJob.job }&nbsp&nbsp  级别：${jobSet.empanelJob.level }<br>
									</c:forEach></th>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</c:if>
</c:if>