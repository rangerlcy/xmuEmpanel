package com.pojo;

/**
 * Education entity. @author MyEclipse Persistence Tools
 */

public class Education implements java.io.Serializable {

	// Fields

	private Integer id;
	private String education;

	// Constructors

	/** default constructor */
	public Education() {
	}

	/** minimal constructor */
	public Education(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public Education(Integer id, String education) {
		this.id = id;
		this.education = education;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getEducation() {
		return this.education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

}