package com.pojo;

/**
 * Sysrole entity. @author MyEclipse Persistence Tools
 */

public class Sysrole implements java.io.Serializable {

	// Fields

	private Integer id;
	private String roleCode;
	private String roleName;

	// Constructors

	/** default constructor */
	public Sysrole() {
	}

	/** full constructor */
	public Sysrole(Integer id, String roleCode, String roleName) {
		this.id = id;
		this.roleCode = roleCode;
		this.roleName = roleName;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getRoleCode() {
		return this.roleCode;
	}

	public void setRoleCode(String roleCode) {
		this.roleCode = roleCode;
	}

	public String getRoleName() {
		return this.roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

}