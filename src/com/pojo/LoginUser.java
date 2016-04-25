package com.pojo;

/**
 * LoginUser entity. @author MyEclipse Persistence Tools
 */

public class LoginUser implements java.io.Serializable {

	// Fields

	private String username;
	private String password;
	private Integer roleId;

	// Constructors

	/** default constructor */
	public LoginUser() {
	}

	/** full constructor */
	public LoginUser(String username, String password, Integer roleId) {
		this.username = username;
		this.password = password;
		this.roleId = roleId;
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

}