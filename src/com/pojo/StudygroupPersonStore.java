package com.pojo;

/**
 * StudygroupPersonStore entity. @author MyEclipse Persistence Tools
 */

public class StudygroupPersonStore implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String sex;
	private String job;
	private String level;
	private String tel;
	private String email;
	private String preUnit;
	private String remark;
	private Integer isLiaison;
	private Integer isTemp;

	// Constructors

	/** default constructor */
	public StudygroupPersonStore() {
	}

	/** minimal constructor */
	public StudygroupPersonStore(Integer isLiaison, Integer isTemp) {
		this.isLiaison = isLiaison;
		this.isTemp = isTemp;
	}

	/** full constructor */
	public StudygroupPersonStore(String name, String sex, String job, String level, String tel, String email, String preUnit, String remark, Integer isLiaison, Integer isTemp) {
		this.name = name;
		this.sex = sex;
		this.job = job;
		this.level = level;
		this.tel = tel;
		this.email = email;
		this.preUnit = preUnit;
		this.remark = remark;
		this.isLiaison = isLiaison;
		this.isTemp = isTemp;
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

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getJob() {
		return this.job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getLevel() {
		return this.level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPreUnit() {
		return this.preUnit;
	}

	public void setPreUnit(String preUnit) {
		this.preUnit = preUnit;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Integer getIsLiaison() {
		return this.isLiaison;
	}

	public void setIsLiaison(Integer isLiaison) {
		this.isLiaison = isLiaison;
	}

	public Integer getIsTemp() {
		return this.isTemp;
	}

	public void setIsTemp(Integer isTemp) {
		this.isTemp = isTemp;
	}

}