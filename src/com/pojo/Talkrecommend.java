package com.pojo;

/**
 * Talkrecommend entity. @author MyEclipse Persistence Tools
 */

public class Talkrecommend implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String job;

	// Constructors

	/** default constructor */
	public Talkrecommend() {
	}

	/** full constructor */
	public Talkrecommend(String name, String job) {
		this.name = name;
		this.job = job;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getJob() {
		return this.job;
	}

	public void setJob(String job) {
		this.job = job;
	}

}