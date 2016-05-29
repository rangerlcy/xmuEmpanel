package com.pojo;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Studygroup entity. @author MyEclipse Persistence Tools
 */

public class Studygroup implements java.io.Serializable {

	// Fields

	private Organization organization;			//人为添加的属性，便于foreach遍历
	private List<StudygroupPerson> persons;	//人为添加, 考察组成员list
	
	private Integer id;
	private LoginUser loginUser;
	private String name;
	private Integer isTemp;
	private Integer delFlag;
	private Integer organizationId;
	
	private Set empanelStudygroups = new HashSet(0);
	private Set studygroupPersons = new HashSet(0);

	// Constructors

	/** default constructor */
	public Studygroup() {
	}

	/** minimal constructor */
	public Studygroup(Integer isTemp, Integer delFlag) {
		this.isTemp = isTemp;
		this.delFlag = delFlag;
	}

	/** full constructor */
	public Studygroup(LoginUser loginUser, String name, Integer isTemp, Integer delFlag, Integer organizationId, Set empanelStudygroups, Set studygroupPersons) {
		this.loginUser = loginUser;
		this.name = name;
		this.isTemp = isTemp;
		this.delFlag = delFlag;
		this.organizationId = organizationId;
		this.empanelStudygroups = empanelStudygroups;
		this.studygroupPersons = studygroupPersons;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public LoginUser getLoginUser() {
		return this.loginUser;
	}

	public void setLoginUser(LoginUser loginUser) {
		this.loginUser = loginUser;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getIsTemp() {
		return this.isTemp;
	}

	public void setIsTemp(Integer isTemp) {
		this.isTemp = isTemp;
	}

	public Integer getDelFlag() {
		return this.delFlag;
	}

	public void setDelFlag(Integer delFlag) {
		this.delFlag = delFlag;
	}

	public Integer getOrganizationId() {
		return this.organizationId;
	}

	public void setOrganizationId(Integer organizationId) {
		this.organizationId = organizationId;
	}

	public Set getEmpanelStudygroups() {
		return this.empanelStudygroups;
	}

	public void setEmpanelStudygroups(Set empanelStudygroups) {
		this.empanelStudygroups = empanelStudygroups;
	}

	public Set getStudygroupPersons() {
		return this.studygroupPersons;
	}

	public void setStudygroupPersons(Set studygroupPersons) {
		this.studygroupPersons = studygroupPersons;
	}

	public Organization getOrganization() {
		return organization;
	}

	public void setOrganization(Organization organization) {
		this.organization = organization;
	}

	public List<StudygroupPerson> getPersons() {
		return persons;
	}

	public void setPersons(List<StudygroupPerson> persons) {
		this.persons = persons;
	}

}