/**
 * 前端创建选任工作，用于接收前端发送过来数据
 */

package com.pojo;

public class WebDataEmpanel {
	
	private String empanelId;
	private String type;
	private String status;
	private String empanel_name;
	private String start_register_year;
	private String start_register_month;
	private String start_register_day;
	private String end_register_year;
	private String end_register_month;
	private String end_register_day;
	private String plan;
	private String maxnum;
	
	private String[] organization;
	private String[] jobName;
	private String[] level;
	private String[] jobNumber;
	
	private String[] delEmpanelJobId;
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getEmpanel_name() {
		return empanel_name;
	}
	public void setEmpanel_name(String empanel_name) {
		this.empanel_name = empanel_name;
	}
	public String getPlan() {
		return plan;
	}
	public void setPlan(String plan) {
		this.plan = plan;
	}
	public String getMaxnum() {
		return maxnum;
	}
	public void setMaxnum(String maxnum) {
		this.maxnum = maxnum;
	}
	public String[] getOrganization() {
		return organization;
	}
	public void setOrganization(String[] organization) {
		this.organization = organization;
	}
	public String[] getJobName() {
		return jobName;
	}
	public void setJobName(String[] jobName) {
		this.jobName = jobName;
	}
	public String[] getLevel() {
		return level;
	}
	public void setLevel(String[] level) {
		this.level = level;
	}
	public String[] getJobNumber() {
		return jobNumber;
	}
	public void setJobNumber(String[] jobNumber) {
		this.jobNumber = jobNumber;
	}
	public String getStart_register_year() {
		return start_register_year;
	}
	public void setStart_register_year(String start_register_year) {
		this.start_register_year = start_register_year;
	}
	public String getStart_register_month() {
		return start_register_month;
	}
	public void setStart_register_month(String start_register_month) {
		this.start_register_month = start_register_month;
	}
	public String getStart_register_day() {
		return start_register_day;
	}
	public void setStart_register_day(String start_register_day) {
		this.start_register_day = start_register_day;
	}
	public String getEnd_register_year() {
		return end_register_year;
	}
	public void setEnd_register_year(String end_register_year) {
		this.end_register_year = end_register_year;
	}
	public String getEnd_register_month() {
		return end_register_month;
	}
	public void setEnd_register_month(String end_register_month) {
		this.end_register_month = end_register_month;
	}
	public String getEnd_register_day() {
		return end_register_day;
	}
	public void setEnd_register_day(String end_register_day) {
		this.end_register_day = end_register_day;
	}
	public String[] getDelEmpanelJobId() {
		return delEmpanelJobId;
	}
	public void setDelEmpanelJobId(String[] delEmpanelJobId) {
		this.delEmpanelJobId = delEmpanelJobId;
	}
	public String getEmpanelId() {
		return empanelId;
	}
	public void setEmpanelId(String empanelId) {
		this.empanelId = empanelId;
	}
	
}
