package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.pojo.Empanel;
import com.pojo.EmpanelJob;

@Service
public class EmpanelService {
	@Autowired
	BaseDao<Empanel> empanelDao;
	
	//查询出所有正在进行中的选任工作
	public List<Empanel> queryAllValid(){
		return empanelDao.queryList("from Empanel e where e.isRealease=1 and e.delFlag=0", null);
	}
	
	public List<Empanel> queryAllValidOrNoRelease(){
		return empanelDao.queryList("from Empanel e where e.delFlag=0", null);
	}
	
	public Empanel queryById(int id){
		List<Empanel> empanels = empanelDao.queryList("from Empanel e where id=?", new Object[]{id});
		if(empanels.size()==0){
			return null;
		}
		return empanels.get(0);
	}
	
	
	//增
	public void addOneEmpanel(Empanel empanel){
		empanelDao.save(empanel);
	}
	
	//更新
	public void update(Empanel empanel) {
		// TODO Auto-generated method stub
		empanelDao.update(empanel);
	}
	
	//根据id真删除
	public void deleteById(int id) {
		// TODO Auto-generated method stub
		empanelDao.delete(Empanel.class, id);
	}
}
