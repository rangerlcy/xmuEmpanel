package com.pojo;

import java.util.HashSet;
import java.util.Set;

/**
 * Empanel entity. @author MyEclipse Persistence Tools
 */

public class Empanel implements java.io.Serializable {

	// Fields

	private Integer id;
	private EmpanelConfig empanelConfig;
	private String name;
	private String type;
	private String flow;
	private String startTime;
	private String endTime;
	private String plan;
	private Integer avgMaxNum;
	private Short isRealease;
	private Short delFlag;
	private Set talkrecommendStates = new HashSet(0);
	private Set entryforms = new HashSet(0);
	private Set meetingrecommendStates = new HashSet(0);
	private Set empanelJobs = new HashSet(0);

	// Constructors

	/** default constructor */
	public Empanel() {
	}

	/** minimal constructor */
	public Empanel(EmpanelConfig empanelConfig, String name, Short isRealease, Short delFlag) {
		this.empanelConfig = empanelConfig;
		this.name = name;
		this.isRealease = isRealease;
		this.delFlag = delFlag;
	}

	/** full constructor */
	public Empanel(EmpanelConfig empanelConfig, String name, String type, String flow, String startTime, String endTime, String plan, Integer avgMaxNum, Short isRealease,
			Short delFlag, Set talkrecommendStates, Set entryforms, Set meetingrecommendStates, Set empanelJobs) {
		this.empanelConfig = empanelConfig;
		this.name = name;
		this.type = type;
		this.flow = flow;
		this.startTime = startTime;
		this.endTime = endTime;
		this.plan = plan;
		this.avgMaxNum = avgMaxNum;
		this.isRealease = isRealease;
		this.delFlag = delFlag;
		this.talkrecommendStates = talkrecommendStates;
		this.entryforms = entryforms;
		this.meetingrecommendStates = meetingrecommendStates;
		this.empanelJobs = empanelJobs;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public EmpanelConfig getEmpanelConfig() {
		return this.empanelConfig;
	}

	public void setEmpanelConfig(EmpanelConfig empanelConfig) {
		this.empanelConfig = empanelConfig;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
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

	public Set getTalkrecommendStates() {
		return this.talkrecommendStates;
	}

	public void setTalkrecommendStates(Set talkrecommendStates) {
		this.talkrecommendStates = talkrecommendStates;
	}

	public Set getEntryforms() {
		return this.entryforms;
	}

	public void setEntryforms(Set entryforms) {
		this.entryforms = entryforms;
	}

	public Set getMeetingrecommendStates() {
		return this.meetingrecommendStates;
	}

	public void setMeetingrecommendStates(Set meetingrecommendStates) {
		this.meetingrecommendStates = meetingrecommendStates;
	}

	public Set getEmpanelJobs() {
		return this.empanelJobs;
	}

	public void setEmpanelJobs(Set empanelJobs) {
		this.empanelJobs = empanelJobs;
	}

}