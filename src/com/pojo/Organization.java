package com.pojo;

import java.util.HashSet;
import java.util.Set;

/**
 * Organization entity. @author MyEclipse Persistence Tools
 */

public class Organization implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private Short delFlag;
	private Set entryforms = new HashSet(0);
	private Set empanelStudygroups = new HashSet(0);
	private Set empanelJobs = new HashSet(0);

	// Constructors

	/** default constructor */
	public Organization() {
	}

	/** minimal constructor */
	public Organization(String name, Short delFlag) {
		this.name = name;
		this.delFlag = delFlag;
	}

	/** full constructor */
	public Organization(String name, Short delFlag, Set entryforms,
			Set empanelStudygroups, Set empanelJobs) {
		this.name = name;
		this.delFlag = delFlag;
		this.entryforms = entryforms;
		this.empanelStudygroups = empanelStudygroups;
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

	public Set getEmpanelStudygroups() {
		return this.empanelStudygroups;
	}

	public void setEmpanelStudygroups(Set empanelStudygroups) {
		this.empanelStudygroups = empanelStudygroups;
	}

	public Set getEmpanelJobs() {
		return this.empanelJobs;
	}

	public void setEmpanelJobs(Set empanelJobs) {
		this.empanelJobs = empanelJobs;
	}

}