package com.pojo;

import java.util.HashSet;
import java.util.Set;

/**
 * EmpanelStudygroup entity. @author MyEclipse Persistence Tools
 */

public class EmpanelStudygroup implements java.io.Serializable {

	// Fields

	private Integer id;
	private Studygroup studygroup;
	private Organization organization;
	private Integer empanelId;
	private Set meetingrecommends = new HashSet(0);

	// Constructors

	/** default constructor */
	public EmpanelStudygroup() {
	}

	/** minimal constructor */
	public EmpanelStudygroup(Studygroup studygroup, Organization organization, Integer empanelId) {
		this.studygroup = studygroup;
		this.organization = organization;
		this.empanelId = empanelId;
	}

	/** full constructor */
	public EmpanelStudygroup(Studygroup studygroup, Organization organization, Integer empanelId, Set meetingrecommends) {
		this.studygroup = studygroup;
		this.organization = organization;
		this.empanelId = empanelId;
		this.meetingrecommends = meetingrecommends;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Studygroup getStudygroup() {
		return this.studygroup;
	}

	public void setStudygroup(Studygroup studygroup) {
		this.studygroup = studygroup;
	}

	public Organization getOrganization() {
		return this.organization;
	}

	public void setOrganization(Organization organization) {
		this.organization = organization;
	}

	public Integer getEmpanelId() {
		return this.empanelId;
	}

	public void setEmpanelId(Integer empanelId) {
		this.empanelId = empanelId;
	}

	public Set getMeetingrecommends() {
		return this.meetingrecommends;
	}

	public void setMeetingrecommends(Set meetingrecommends) {
		this.meetingrecommends = meetingrecommends;
	}

}