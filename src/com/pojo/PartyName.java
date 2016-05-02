package com.pojo;

/**
 * PartyName entity. @author MyEclipse Persistence Tools
 */

public class PartyName implements java.io.Serializable {

	// Fields

	private Integer id;
	private String partyName;

	// Constructors

	/** default constructor */
	public PartyName() {
	}

	/** minimal constructor */
	public PartyName(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public PartyName(Integer id, String partyName) {
		this.id = id;
		this.partyName = partyName;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPartyName() {
		return this.partyName;
	}

	public void setPartyName(String partyName) {
		this.partyName = partyName;
	}

}