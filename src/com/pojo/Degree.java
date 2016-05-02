package com.pojo;

/**
 * Degree entity. @author MyEclipse Persistence Tools
 */

public class Degree implements java.io.Serializable {

	// Fields

	private String degree;
	private String type;

	// Constructors

	/** default constructor */
	public Degree() {
	}

	/** minimal constructor */
	public Degree(String degree) {
		this.degree = degree;
	}

	/** full constructor */
	public Degree(String degree, String type) {
		this.degree = degree;
		this.type = type;
	}

	// Property accessors

	public String getDegree() {
		return this.degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

}