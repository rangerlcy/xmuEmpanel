package com.pojo;

/**
 * StudygroupPerson entity. @author MyEclipse Persistence Tools
 */

public class StudygroupPerson implements java.io.Serializable {

	// Fields

	private Integer id;
	private StudygroupPersonStore studygroupPersonStore;
	private Studygroup studygroup;
	private String type;

	// Constructors

	/** default constructor */
	public StudygroupPerson() {
	}

	/** full constructor */
	public StudygroupPerson(StudygroupPersonStore studygroupPersonStore, Studygroup studygroup, String type) {
		this.studygroupPersonStore = studygroupPersonStore;
		this.studygroup = studygroup;
		this.type = type;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public StudygroupPersonStore getStudygroupPersonStore() {
		return this.studygroupPersonStore;
	}

	public void setStudygroupPersonStore(StudygroupPersonStore studygroupPersonStore) {
		this.studygroupPersonStore = studygroupPersonStore;
	}

	public Studygroup getStudygroup() {
		return this.studygroup;
	}

	public void setStudygroup(Studygroup studygroup) {
		this.studygroup = studygroup;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

}