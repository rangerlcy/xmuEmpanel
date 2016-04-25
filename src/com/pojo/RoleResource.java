package com.pojo;

/**
 * RoleResource entity. @author MyEclipse Persistence Tools
 */

public class RoleResource implements java.io.Serializable {

	// Fields

	private Integer roleId;
	private String resourceUrl;

	// Constructors

	/** default constructor */
	public RoleResource() {
	}

	/** full constructor */
	public RoleResource(Integer roleId, String resourceUrl) {
		this.roleId = roleId;
		this.resourceUrl = resourceUrl;
	}

	// Property accessors

	public Integer getRoleId() {
		return this.roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public String getResourceUrl() {
		return this.resourceUrl;
	}

	public void setResourceUrl(String resourceUrl) {
		this.resourceUrl = resourceUrl;
	}

}