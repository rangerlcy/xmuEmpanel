package com.pojo;

/**
 * Ethnic entity. @author MyEclipse Persistence Tools
 */

public class Ethnic implements java.io.Serializable {

	// Fields

	private Integer id;
	private String ethnic;

	// Constructors

	/** default constructor */
	public Ethnic() {
	}

	/** full constructor */
	public Ethnic(String ethnic) {
		this.ethnic = ethnic;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getEthnic() {
		return this.ethnic;
	}

	public void setEthnic(String ethnic) {
		this.ethnic = ethnic;
	}

}