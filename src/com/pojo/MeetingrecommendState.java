package com.pojo;

/**
 * MeetingrecommendState entity. @author MyEclipse Persistence Tools
 */

public class MeetingrecommendState implements java.io.Serializable {

	// Fields

	private Integer id;
	private Entryform entryform;
	private Empanel empanel;
	private Integer total;
	private Integer morality;
	private Integer writting;
	private Integer unit;
	private Integer fair;
	private Integer honest;
	private Integer performance;
	private Integer recommend;

	// Constructors

	/** default constructor */
	public MeetingrecommendState() {
	}

	/** full constructor */
	public MeetingrecommendState(Integer id, Entryform entryform, Empanel empanel, Integer total, Integer morality, Integer writting, Integer unit, Integer fair, Integer honest,
			Integer performance, Integer recommend) {
		this.id = id;
		this.entryform = entryform;
		this.empanel = empanel;
		this.total = total;
		this.morality = morality;
		this.writting = writting;
		this.unit = unit;
		this.fair = fair;
		this.honest = honest;
		this.performance = performance;
		this.recommend = recommend;
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

	public Integer getTotal() {
		return this.total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public Integer getMorality() {
		return this.morality;
	}

	public void setMorality(Integer morality) {
		this.morality = morality;
	}

	public Integer getWritting() {
		return this.writting;
	}

	public void setWritting(Integer writting) {
		this.writting = writting;
	}

	public Integer getUnit() {
		return this.unit;
	}

	public void setUnit(Integer unit) {
		this.unit = unit;
	}

	public Integer getFair() {
		return this.fair;
	}

	public void setFair(Integer fair) {
		this.fair = fair;
	}

	public Integer getHonest() {
		return this.honest;
	}

	public void setHonest(Integer honest) {
		this.honest = honest;
	}

	public Integer getPerformance() {
		return this.performance;
	}

	public void setPerformance(Integer performance) {
		this.performance = performance;
	}

	public Integer getRecommend() {
		return this.recommend;
	}

	public void setRecommend(Integer recommend) {
		this.recommend = recommend;
	}

}