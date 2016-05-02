package com.pojo;

/**
 * PlaceTown entity. @author MyEclipse Persistence Tools
 */

public class PlaceTown implements java.io.Serializable {

	// Fields

	private Integer id;
	private PlaceCity placeCity;
	private String town;

	// Constructors

	/** default constructor */
	public PlaceTown() {
	}

	/** minimal constructor */
	public PlaceTown(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public PlaceTown(Integer id, PlaceCity placeCity, String town) {
		this.id = id;
		this.placeCity = placeCity;
		this.town = town;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public PlaceCity getPlaceCity() {
		return this.placeCity;
	}

	public void setPlaceCity(PlaceCity placeCity) {
		this.placeCity = placeCity;
	}

	public String getTown() {
		return this.town;
	}

	public void setTown(String town) {
		this.town = town;
	}

}