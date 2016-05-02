package com.pojo;

/**
 * EntryformJob entity. @author MyEclipse Persistence Tools
 */

public class EntryformJob implements java.io.Serializable {

	// Fields

	private Integer id;
	private Entryform entryform;
	private EmpanelJob empanelJob;
	private Short jobNum;
	private Short isSelected;

	// Constructors

	/** default constructor */
	public EntryformJob() {
	}

	/** full constructor */
	public EntryformJob(Integer id, Entryform entryform, EmpanelJob empanelJob,
			Short jobNum, Short isSelected) {
		this.id = id;
		this.entryform = entryform;
		this.empanelJob = empanelJob;
		this.jobNum = jobNum;
		this.isSelected = isSelected;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Entryform getEntryform() {
		return this.entryform;
	}

	public void setEntryform(Entryform entryform) {
		this.entryform = entryform;
	}

	public EmpanelJob getEmpanelJob() {
		return this.empanelJob;
	}

	public void setEmpanelJob(EmpanelJob empanelJob) {
		this.empanelJob = empanelJob;
	}

	public Short getJobNum() {
		return this.jobNum;
	}

	public void setJobNum(Short jobNum) {
		this.jobNum = jobNum;
	}

	public Short getIsSelected() {
		return this.isSelected;
	}

	public void setIsSelected(Short isSelected) {
		this.isSelected = isSelected;
	}

}