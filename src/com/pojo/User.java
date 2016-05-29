package com.pojo;

import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private Integer id;
	private LoginUser loginUser;
	private Integer delFlag;
	private String identifyNum;
	private String email;
	private Set entryforms = new HashSet(0);

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(LoginUser loginUser, String identifyNum, String email) {
		this.loginUser = loginUser;
		this.identifyNum = identifyNum;
		this.email = email;
	}

	/** full constructor */
	public User(LoginUser loginUser, Integer delFlag, String identifyNum, String email, Set entryforms) {
		this.loginUser = loginUser;
		this.delFlag = delFlag;
		this.identifyNum = identifyNum;
		this.email = email;
		this.entryforms = entryforms;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public LoginUser getLoginUser() {
		return this.loginUser;
	}

	public void setLoginUser(LoginUser loginUser) {
		this.loginUser = loginUser;
	}

	public Integer getDelFlag() {
		return this.delFlag;
	}

	public void setDelFlag(Integer delFlag) {
		this.delFlag = delFlag;
	}

	public String getIdentifyNum() {
		return this.identifyNum;
	}

	public void setIdentifyNum(String identifyNum) {
		this.identifyNum = identifyNum;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Set getEntryforms() {
		return this.entryforms;
	}

	public void setEntryforms(Set entryforms) {
		this.entryforms = entryforms;
	}

}