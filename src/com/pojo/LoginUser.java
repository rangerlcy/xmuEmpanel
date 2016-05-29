package com.pojo;

import java.util.HashSet;
import java.util.Set;

/**
 * LoginUser entity. @author MyEclipse Persistence Tools
 */

public class LoginUser implements java.io.Serializable {

	// Fields

	private String username;
	private String password;
	private Integer roleId;
	private Set users = new HashSet(0);
	private Set studygroups = new HashSet(0);

	// Constructors

	/** default constructor */
	public LoginUser() {
	}

	/** minimal constructor */
	public LoginUser(String username, String password, Integer roleId) {
		this.username = username;
		this.password = password;
		this.roleId = roleId;
	}

	/** full constructor */
	public LoginUser(String username, String password, Integer roleId, Set users, Set studygroups) {
		this.username = username;
		this.password = password;
		this.roleId = roleId;
		this.users = users;
		this.studygroups = studygroups;
	}

	// Property accessors

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getRoleId() {
		return this.roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public Set getUsers() {
		return this.users;
	}

	public void setUsers(Set users) {
		this.users = users;
	}

	public Set getStudygroups() {
		return this.studygroups;
	}

	public void setStudygroups(Set studygroups) {
		this.studygroups = studygroups;
	}

}