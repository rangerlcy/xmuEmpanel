package com.pojo;

import java.util.HashSet;
import java.util.Set;

/**
 * Meetingrecommend entity. @author MyEclipse Persistence Tools
 */

public class Meetingrecommend implements java.io.Serializable {

	// Fields

	private Integer id;
	private EmpanelStudygroup empanelStudygroup;
	private Set meetingrecommendStates = new HashSet(0);

	// Constructors

	/** default constructor */
	public Meetingrecommend() {
	}

	/** minimal constructor */
	public Meetingrecommend(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public Meetingrecommend(Integer id, EmpanelStudygroup empanelStudygroup, Set meetingrecommendStates) {
		this.id = id;
		this.empanelStudygroup = empanelStudygroup;
		this.meetingrecommendStates = meetingrecommendStates;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public EmpanelStudygroup getEmpanelStudygroup() {
		return this.empanelStudygroup;
	}

	public void setEmpanelStudygroup(EmpanelStudygroup empanelStudygroup) {
		this.empanelStudygroup = empanelStudygroup;
	}

	public Set getMeetingrecommendStates() {
		return this.meetingrecommendStates;
	}

	public void setMeetingrecommendStates(Set meetingrecommendStates) {
		this.meetingrecommendStates = meetingrecommendStates;
	}

}