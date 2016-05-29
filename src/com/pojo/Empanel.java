package com.pojo;

import java.util.HashSet;
import java.util.Set;

/**
 * Empanel entity. @author MyEclipse Persistence Tools
 */

public class Empanel implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String status;
	private String type;
	private String flow;
	private String startTime;
	private String endTime;
	private String plan;
	private Integer avgMaxNum;
	private Short isRealease;
	private Short delFlag;
	private Set entryforms = new HashSet(0);
	private Set empanelJobs = new HashSet(0);

	// Constructors

	/** default constructor */
	public Empanel() {
	}

	/** minimal constructor */
	public Empanel(String name, Short isRealease, Short delFlag) {
		this.name = name;
		this.isRealease = isRealease;
		this.delFlag = delFlag;
	}

	/** full constructor */
	public Empanel(String name, String status, String type, String flow, String startTime, String endTime, String plan, Integer avgMaxNum, Short isRealease, Short delFlag,
			Set entryforms, Set empanelJobs) {
		this.name = name;
		this.status = status;
		this.type = type;
		this.flow = flow;
		this.startTime = startTime;
		this.endTime = endTime;
		this.plan = plan;
		this.avgMaxNum = avgMaxNum;
		this.isRealease = isRealease;
		this.delFlag = delFlag;
		this.entryforms = entryforms;
		this.empanelJobs = empanelJobs;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getFlow() {
		return this.flow;
	}

	public void setFlow(String flow) {
		this.flow = flow;
	}

	public String getStartTime() {
		return this.startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return this.endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getPlan() {
		return this.plan;
	}

	public void setPlan(String plan) {
		this.plan = plan;
	}

	public Integer getAvgMaxNum() {
		return this.avgMaxNum;
	}

	public void setAvgMaxNum(Integer avgMaxNum) {
		this.avgMaxNum = avgMaxNum;
	}

	public Short getIsRealease() {
		return this.isRealease;
	}

	public void setIsRealease(Short isRealease) {
		this.isRealease = isRealease;
	}

	public Short getDelFlag() {
		return this.delFlag;
	}

	public void setDelFlag(Short delFlag) {
		this.delFlag = delFlag;
	}

	public Set getEntryforms() {
		return this.entryforms;
	}

	public void setEntryforms(Set entryforms) {
		this.entryforms = entryforms;
	}

	public Set getEmpanelJobs() {
		return this.empanelJobs;
	}

	public void setEmpanelJobs(Set empanelJobs) {
		this.empanelJobs = empanelJobs;
	}

}