package com.pojo;

import java.util.HashSet;
import java.util.Set;

/**
 * PlaceCity entity. @author MyEclipse Persistence Tools
 */

public class PlaceCity implements java.io.Serializable {

	// Fields

	private Integer id;
	private PlaceProvince placeProvince;
	private String city;
	private Set placeTowns = new HashSet(0);

	// Constructors

	/** default constructor */
	public PlaceCity() {
	}

	/** minimal constructor */
	public PlaceCity(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public PlaceCity(Integer id, PlaceProvince placeProvince, String city,
			Set placeTowns) {
		this.id = id;
		this.placeProvince = placeProvince;
		this.city = city;
		this.placeTowns = placeTowns;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public PlaceProvince getPlaceProvince() {
		return this.placeProvince;
	}

	public void setPlaceProvince(PlaceProvince placeProvince) {
		this.placeProvince = placeProvince;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public Set getPlaceTowns() {
		return this.placeTowns;
	}

	public void setPlaceTowns(Set placeTowns) {
		this.placeTowns = placeTowns;
	}

}