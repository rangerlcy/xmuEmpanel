/**
 * 本单位报名人员导出Excel数据结构
 */

package com.pojo;


public class UnitRegisterPerson implements Comparable<UnitRegisterPerson>{
	private String jobString;
	private Entryform entryform;
	private String jobLevel;
	
	public String getJobString() {
		return jobString;
	}
	public void setJobString(String jobString) {
		this.jobString = jobString;
	}
	public Entryform getEntryform() {
		return entryform;
	}
	public void setEntryform(Entryform entryform) {
		this.entryform = entryform;
	}
	public String getJobLevel() {
		return jobLevel;
	}
	public void setJobLevel(String jobLevel) {
		this.jobLevel = jobLevel;
	}
	
	@Override
	public int compareTo(UnitRegisterPerson arg) {
		// TODO Auto-generated method stub
		return this.jobString.compareTo(arg.jobString);
	}
}
