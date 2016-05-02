package com.pojo;

import java.util.HashSet;
import java.util.Set;

/**
 * Entryform entity. @author MyEclipse Persistence Tools
 */

public class Entryform implements java.io.Serializable,Cloneable {

	// Fields

	private Integer id;
	private User user;
	private Empanel empanel;
	private Organization organization;
	private String name;
	private String sex;
	private String birth;
	private String nationality;
	private String nativePlace;
	private String birthPlace;
	private String picUrl;
	private String joinPartyTime;
	private String workTime;
	private String collegeTime;
	private String specialJob;
	private String specialSkill;
	private String fullTimeEducationRecord;
	private String fullTimeEducationLevel;
	private String fullTimeEducationCollege;
	private String incumbencyEducationRecord;
	private String incumbencyEducationLevel;
	private String incumbencyEducationCollege;
	private String tel;
	private String email;
	private String presentlyJob;
	private String resume;
	private String punishReward;
	private String appraisalResult;
	private String appointDismissReason;
	private String partyName;
	private Set entryformJobs = new HashSet(0);
	private Set entryformFamilies = new HashSet(0);
	private Set entryformRelativemeritses = new HashSet(0);

	
	@Override
	public Entryform clone(){
		Entryform ef = null;
		try{
			ef = (Entryform) super.clone();
		}catch (CloneNotSupportedException e) {  
            e.printStackTrace();  
        }  
        return ef; 
	}
	
	
	// Constructors

	/** default constructor */
	public Entryform() {
	}

	/** full constructor */
	public Entryform(User user, Empanel empanel, Organization organization,
			String name, String sex, String birth, String nationality,
			String nativePlace, String birthPlace, String picUrl,
			String joinPartyTime, String workTime, String collegeTime,
			String specialJob, String specialSkill,
			String fullTimeEducationRecord, String fullTimeEducationLevel,
			String fullTimeEducationCollege, String incumbencyEducationRecord,
			String incumbencyEducationLevel, String incumbencyEducationCollege,
			String tel, String email, String presentlyJob, String resume,
			String punishReward, String appraisalResult,
			String appointDismissReason, String partyName, Set entryformJobs,
			Set entryformFamilies, Set entryformRelativemeritses) {
		this.user = user;
		this.empanel = empanel;
		this.organization = organization;
		this.name = name;
		this.sex = sex;
		this.birth = birth;
		this.nationality = nationality;
		this.nativePlace = nativePlace;
		this.birthPlace = birthPlace;
		this.picUrl = picUrl;
		this.joinPartyTime = joinPartyTime;
		this.workTime = workTime;
		this.collegeTime = collegeTime;
		this.specialJob = specialJob;
		this.specialSkill = specialSkill;
		this.fullTimeEducationRecord = fullTimeEducationRecord;
		this.fullTimeEducationLevel = fullTimeEducationLevel;
		this.fullTimeEducationCollege = fullTimeEducationCollege;
		this.incumbencyEducationRecord = incumbencyEducationRecord;
		this.incumbencyEducationLevel = incumbencyEducationLevel;
		this.incumbencyEducationCollege = incumbencyEducationCollege;
		this.tel = tel;
		this.email = email;
		this.presentlyJob = presentlyJob;
		this.resume = resume;
		this.punishReward = punishReward;
		this.appraisalResult = appraisalResult;
		this.appointDismissReason = appointDismissReason;
		this.partyName = partyName;
		this.entryformJobs = entryformJobs;
		this.entryformFamilies = entryformFamilies;
		this.entryformRelativemeritses = entryformRelativemeritses;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Empanel getEmpanel() {
		return this.empanel;
	}

	public void setEmpanel(Empanel empanel) {
		this.empanel = empanel;
	}

	public Organization getOrganization() {
		return this.organization;
	}

	public void setOrganization(Organization organization) {
		this.organization = organization;
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

	public String getBirth() {
		return this.birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getNationality() {
		return this.nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getNativePlace() {
		return this.nativePlace;
	}

	public void setNativePlace(String nativePlace) {
		this.nativePlace = nativePlace;
	}

	public String getBirthPlace() {
		return this.birthPlace;
	}

	public void setBirthPlace(String birthPlace) {
		this.birthPlace = birthPlace;
	}

	public String getPicUrl() {
		return this.picUrl;
	}

	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}

	public String getJoinPartyTime() {
		return this.joinPartyTime;
	}

	public void setJoinPartyTime(String joinPartyTime) {
		this.joinPartyTime = joinPartyTime;
	}

	public String getWorkTime() {
		return this.workTime;
	}

	public void setWorkTime(String workTime) {
		this.workTime = workTime;
	}

	public String getCollegeTime() {
		return this.collegeTime;
	}

	public void setCollegeTime(String collegeTime) {
		this.collegeTime = collegeTime;
	}

	public String getSpecialJob() {
		return this.specialJob;
	}

	public void setSpecialJob(String specialJob) {
		this.specialJob = specialJob;
	}

	public String getSpecialSkill() {
		return this.specialSkill;
	}

	public void setSpecialSkill(String specialSkill) {
		this.specialSkill = specialSkill;
	}

	public String getFullTimeEducationRecord() {
		return this.fullTimeEducationRecord;
	}

	public void setFullTimeEducationRecord(String fullTimeEducationRecord) {
		this.fullTimeEducationRecord = fullTimeEducationRecord;
	}

	public String getFullTimeEducationLevel() {
		return this.fullTimeEducationLevel;
	}

	public void setFullTimeEducationLevel(String fullTimeEducationLevel) {
		this.fullTimeEducationLevel = fullTimeEducationLevel;
	}

	public String getFullTimeEducationCollege() {
		return this.fullTimeEducationCollege;
	}

	public void setFullTimeEducationCollege(String fullTimeEducationCollege) {
		this.fullTimeEducationCollege = fullTimeEducationCollege;
	}

	public String getIncumbencyEducationRecord() {
		return this.incumbencyEducationRecord;
	}

	public void setIncumbencyEducationRecord(String incumbencyEducationRecord) {
		this.incumbencyEducationRecord = incumbencyEducationRecord;
	}

	public String getIncumbencyEducationLevel() {
		return this.incumbencyEducationLevel;
	}

	public void setIncumbencyEducationLevel(String incumbencyEducationLevel) {
		this.incumbencyEducationLevel = incumbencyEducationLevel;
	}

	public String getIncumbencyEducationCollege() {
		return this.incumbencyEducationCollege;
	}

	public void setIncumbencyEducationCollege(String incumbencyEducationCollege) {
		this.incumbencyEducationCollege = incumbencyEducationCollege;
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

	public String getPresentlyJob() {
		return this.presentlyJob;
	}

	public void setPresentlyJob(String presentlyJob) {
		this.presentlyJob = presentlyJob;
	}

	public String getResume() {
		return this.resume;
	}

	public void setResume(String resume) {
		this.resume = resume;
	}

	public String getPunishReward() {
		return this.punishReward;
	}

	public void setPunishReward(String punishReward) {
		this.punishReward = punishReward;
	}

	public String getAppraisalResult() {
		return this.appraisalResult;
	}

	public void setAppraisalResult(String appraisalResult) {
		this.appraisalResult = appraisalResult;
	}

	public String getAppointDismissReason() {
		return this.appointDismissReason;
	}

	public void setAppointDismissReason(String appointDismissReason) {
		this.appointDismissReason = appointDismissReason;
	}

	public String getPartyName() {
		return this.partyName;
	}

	public void setPartyName(String partyName) {
		this.partyName = partyName;
	}

	public Set getEntryformJobs() {
		return this.entryformJobs;
	}

	public void setEntryformJobs(Set entryformJobs) {
		this.entryformJobs = entryformJobs;
	}

	public Set getEntryformFamilies() {
		return this.entryformFamilies;
	}

	public void setEntryformFamilies(Set entryformFamilies) {
		this.entryformFamilies = entryformFamilies;
	}

	public Set getEntryformRelativemeritses() {
		return this.entryformRelativemeritses;
	}

	public void setEntryformRelativemeritses(Set entryformRelativemeritses) {
		this.entryformRelativemeritses = entryformRelativemeritses;
	}

}