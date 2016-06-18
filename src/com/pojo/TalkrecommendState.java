package com.pojo;

/**
 * TalkrecommendState entity. @author MyEclipse Persistence Tools
 */

public class TalkrecommendState implements java.io.Serializable {

	// Fields

	private Integer id;
	private Entryform entryform;
	private Empanel empanel;
	private Integer vote;
	private String votePeople;

	// Constructors

	/** default constructor */
	public TalkrecommendState() {
	}

	/** minimal constructor */
	public TalkrecommendState(Integer id, Entryform entryform, Empanel empanel, String votePeople) {
		this.id = id;
		this.entryform = entryform;
		this.empanel = empanel;
		this.votePeople = votePeople;
	}

	/** full constructor */
	public TalkrecommendState(Integer id, Entryform entryform, Empanel empanel, Integer vote, String votePeople) {
		this.id = id;
		this.entryform = entryform;
		this.empanel = empanel;
		this.vote = vote;
		this.votePeople = votePeople;
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

	public Empanel getEmpanel() {
		return this.empanel;
	}

	public void setEmpanel(Empanel empanel) {
		this.empanel = empanel;
	}

	public Integer getVote() {
		return this.vote;
	}

	public void setVote(Integer vote) {
		this.vote = vote;
	}

	public String getVotePeople() {
		return this.votePeople;
	}

	public void setVotePeople(String votePeople) {
		this.votePeople = votePeople;
	}

}