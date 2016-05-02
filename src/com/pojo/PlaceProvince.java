package com.pojo;

import java.util.HashSet;
import java.util.Set;

/**
 * PlaceProvince entity. @author MyEclipse Persistence Tools
 */

public class PlaceProvince implements java.io.Serializable {

	// Fields

	private Integer id;
	private String province;
	private Set placeCities = new HashSet(0);

	// Constructors

	/** default constructor */
	public PlaceProvince() {
	}

	/** minimal constructor */
	public PlaceProvince(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public PlaceProvince(Integer id, String province, Set placeCities) {
		this.id = id;
		this.province = province;
		this.placeCities = placeCities;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getProvince() {
		return this.province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public Set getPlaceCities() {
		return this.placeCities;
	}

	public void setPlaceCities(Set placeCities) {
		this.placeCities = placeCities;
	}

}