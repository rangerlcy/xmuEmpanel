package com.pojo;

import java.util.HashSet;
import java.util.Set;

/**
 * EmpanelJob entity. @author MyEclipse Persistence Tools
 */

public class EmpanelJob implements java.io.Serializable {

	// Fields

	private Integer id;
	private Empanel empanel;
	private Organization organization;
	private String job;
	private String level;
	private Short amount;
	private Set entryformJobs = new HashSet(0);

	// Constructors

	/** default constructor */
	public EmpanelJob() {
	}

	/** minimal constructor */
	public EmpanelJob(Empanel empanel, Organization organization, String job,
			String level, Short amount) {
		this.empanel = empanel;
		this.organization = organization;
		this.job = job;
		this.level = level;
		this.amount = amount;
	}

	/** full constructor */
	public EmpanelJob(Empanel empanel, Organization organization, String job,
			String level, Short amount, Set entryformJobs) {
		this.empanel = empanel;
		this.organization = organization;
		this.job = job;
		this.level = level;
		this.amount = amount;
		this.entryformJobs = entryformJobs;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Empanel getEmpanel() {
		return this.empanel;
	}

	public void setEmpanel(Empanel empanel) {
		this.empanel = empanel;
	}

	public Organization getOrganization() {
		return this.organization;
	}

	public void setOrganization(Organization organization) {
		this.organization = organization;
	}

	public String getJob() {
		return this.job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getLevel() {
		return this.level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public Short getAmount() {
		return this.amount;
	}

	public void setAmount(Short amount) {
		this.amount = amount;
	}

	public Set getEntryformJobs() {
		return this.entryformJobs;
	}

	public void setEntryformJobs(Set entryformJobs) {
		this.entryformJobs = entryformJobs;
	}

}