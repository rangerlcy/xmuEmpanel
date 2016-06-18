package com.pojo;

import java.util.HashSet;
import java.util.Set;

/**
 * EmpanelConfig entity. @author MyEclipse Persistence Tools
 */

public class EmpanelConfig implements java.io.Serializable {

	// Fields

	private Integer id;
	private String configName;
	private String illustration;
	private String enrollType;
	private String studygroupType;
	private String meetingRecommendModel;
	private String talkingRecommendModel;
	private String talkingRecordModel;
	private String entryformPersonModel;
	private String entryformJobModel;
	private String appointModel;
	private Set empanels = new HashSet(0);

	// Constructors

	/** default constructor */
	public EmpanelConfig() {
	}

	/** minimal constructor */
	public EmpanelConfig(String configName) {
		this.configName = configName;
	}

	/** full constructor */
	public EmpanelConfig(String configName, String illustration, String enrollType, String studygroupType, String meetingRecommendModel, String talkingRecommendModel,
			String talkingRecordModel, String entryformPersonModel, String entryformJobModel, String appointModel, Set empanels) {
		this.configName = configName;
		this.illustration = illustration;
		this.enrollType = enrollType;
		this.studygroupType = studygroupType;
		this.meetingRecommendModel = meetingRecommendModel;
		this.talkingRecommendModel = talkingRecommendModel;
		this.talkingRecordModel = talkingRecordModel;
		this.entryformPersonModel = entryformPersonModel;
		this.entryformJobModel = entryformJobModel;
		this.appointModel = appointModel;
		this.empanels = empanels;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getConfigName() {
		return this.configName;
	}

	public void setConfigName(String configName) {
		this.configName = configName;
	}

	public String getIllustration() {
		return this.illustration;
	}

	public void setIllustration(String illustration) {
		this.illustration = illustration;
	}

	public String getEnrollType() {
		return this.enrollType;
	}

	public void setEnrollType(String enrollType) {
		this.enrollType = enrollType;
	}

	public String getStudygroupType() {
		return this.studygroupType;
	}

	public void setStudygroupType(String studygroupType) {
		this.studygroupType = studygroupType;
	}

	public String getMeetingRecommendModel() {
		return this.meetingRecommendModel;
	}

	public void setMeetingRecommendModel(String meetingRecommendModel) {
		this.meetingRecommendModel = meetingRecommendModel;
	}

	public String getTalkingRecommendModel() {
		return this.talkingRecommendModel;
	}

	public void setTalkingRecommendModel(String talkingRecommendModel) {
		this.talkingRecommendModel = talkingRecommendModel;
	}

	public String getTalkingRecordModel() {
		return this.talkingRecordModel;
	}

	public void setTalkingRecordModel(String talkingRecordModel) {
		this.talkingRecordModel = talkingRecordModel;
	}

	public String getEntryformPersonModel() {
		return this.entryformPersonModel;
	}

	public void setEntryformPersonModel(String entryformPersonModel) {
		this.entryformPersonModel = entryformPersonModel;
	}

	public String getEntryformJobModel() {
		return this.entryformJobModel;
	}

	public void setEntryformJobModel(String entryformJobModel) {
		this.entryformJobModel = entryformJobModel;
	}

	public String getAppointModel() {
		return this.appointModel;
	}

	public void setAppointModel(String appointModel) {
		this.appointModel = appointModel;
	}

	public Set getEmpanels() {
		return this.empanels;
	}

	public void setEmpanels(Set empanels) {
		this.empanels = empanels;
	}

}