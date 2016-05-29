package com.pojo;

/**
 * EntryformRelativemerits entity. @author MyEclipse Persistence Tools
 */

public class EntryformRelativemerits implements java.io.Serializable {

	// Fields

	private Integer id;
	private Entryform entryform;
	private Integer type;
	private String content;

	// Constructors

	/** default constructor */
	public EntryformRelativemerits() {
	}

	/** minimal constructor */
	public EntryformRelativemerits(Entryform entryform, Integer type) {
		this.entryform = entryform;
		this.type = type;
	}

	/** full constructor */
	public EntryformRelativemerits(Entryform entryform, Integer type, String content) {
		this.entryform = entryform;
		this.type = type;
		this.content = content;
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

	public Integer getType() {
		return this.type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}