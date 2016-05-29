package com.pojo;

/**
 * TalkrecommendState entity. @author MyEclipse Persistence Tools
 */

public class TalkrecommendState implements java.io.Serializable {

	// Fields

	private Integer id;
	private Entryform entryform;
	private Integer vote;

	// Constructors

	/** default constructor */
	public TalkrecommendState() {
	}

	/** full constructor */
	public TalkrecommendState(Integer id, Entryform entryform, Integer vote) {
		this.id = id;
		this.entryform = entryform;
		this.vote = vote;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Entryform getEntryform() {
		return this.entryform;
	}

	public void setEntryform(Entryform entryform) {
		this.entryform = entryform;
	}

	public Integer getVote() {
		return this.vote;
	}

	public void setVote(Integer vote) {
		this.vote = vote;
	}

}