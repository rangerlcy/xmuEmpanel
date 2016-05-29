/**
 * 某教职工在某选任工作中的状态，是否绑定报名表，是否报名
 * 
 */

package com.pojo;

public class StaffEmpanelState {
	
	private Empanel empanel;
	private String state;
	
	
	public Empanel getEmpanel() {
		return empanel;
	}
	public void setEmpanel(Empanel empanel) {
		this.empanel = empanel;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}

}
