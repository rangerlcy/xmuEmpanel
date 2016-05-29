package com.pojo;

/**
 * EntryformFamily entity. @author MyEclipse Persistence Tools
 */

public class EntryformFamily implements java.io.Serializable,Cloneable {

	// Fields

	private Integer id;
	private Entryform entryform;
	private String appellation;
	private String name;
	private String birth;
	private String politics;
	private String job;

	// Constructors
	
	@Override
	public EntryformFamily clone(){
		EntryformFamily eff = null;
		try{
			eff = (EntryformFamily) super.clone();
		}catch (CloneNotSupportedException e) {  
            e.printStackTrace();  
        }  
        return eff; 
	}
	
	/** default constructor */
	public EntryformFamily() {
	}

	/** full constructor */
	public EntryformFamily(Entryform entryform, String appellation, String name, String birth, String politics, String job) {
		this.entryform = entryform;
		this.appellation = appellation;
		this.name = name;
		this.birth = birth;
		this.politics = politics;
		this.job = job;
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

	public String getAppellation() {
		return this.appellation;
	}

	public void setAppellation(String appellation) {
		this.appellation = appellation;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth() {
		return this.birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getPolitics() {
		return this.politics;
	}

	public void setPolitics(String politics) {
		this.politics = politics;
	}

	public String getJob() {
		return this.job;
	}

	public void setJob(String job) {
		this.job = job;
	}

}