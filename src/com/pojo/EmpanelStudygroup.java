package com.pojo;

/**
 * EmpanelStudygroup entity. @author MyEclipse Persistence Tools
 */

public class EmpanelStudygroup implements java.io.Serializable {

	// Fields

	private Integer id;
	private Organization organization;
	private Integer studyGroupId;
	private Integer empanelId;

	// Constructors

	/** default constructor */
	public EmpanelStudygroup() {
	}

	/** full constructor */
	public EmpanelStudygroup(Organization organization, Integer studyGroupId,
			Integer empanelId) {
		this.organization = organization;
		this.studyGroupId = studyGroupId;
		this.empanelId = empanelId;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Organization getOrganization() {
		return this.organization;
	}

	public void setOrganization(Organization organization) {
		this.organization = organization;
	}

	public Integer getStudyGroupId() {
		return this.studyGroupId;
	}

	public void setStudyGroupId(Integer studyGroupId) {
		this.studyGroupId = studyGroupId;
	}

	public Integer getEmpanelId() {
		return this.empanelId;
	}

	public void setEmpanelId(Integer empanelId) {
		this.empanelId = empanelId;
	}

}