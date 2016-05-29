package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.pojo.EmpanelJob;
import com.pojo.EntryformJob;
import com.pojo.Organization;


@Service
public class EmpanelJobService {
	@Autowired
	BaseDao<EmpanelJob> empanelJobDao;
	
	public List<EmpanelJob> queryByEmpanelId(int id){
		String hqlString = "from EmpanelJob ej where ej.empanel.id=?";
		return empanelJobDao.queryList(hqlString, new Object[]{id});
		
	}
	
	public EmpanelJob queryById(int id){
		String hqlString = "from EmpanelJob ej where ej.id=?";
		return empanelJobDao.queryList(hqlString, new Object[]{id}).get(0);
	}
	
	public Organization queryOrganizationByEmpanelJobId(int id){
		EmpanelJob eJob = empanelJobDao.findOne(EmpanelJob.class, id);
		return eJob.getOrganization();
	}
	
	//查询选任的岗位里是否有正在进行的且属于某单位
	public List<EmpanelJob> queryByOrgIdAndEmpanelValid(int orgId){
		String hql = "from EmpanelJob ej where ej.organization.id=? and ej.empanel.isRealease=1 and ej.empanel.delFlag=0";
		List<EmpanelJob> list = empanelJobDao.queryList(hql, new Object[]{orgId});
		return list;
	}
	
	//增
	public void addOneItem(EmpanelJob empanelJob){
		empanelJobDao.save(empanelJob);
	}
	
	//根据id删除，真删除
	public void deleteById(int id) {
		// TODO Auto-generated method stub
		empanelJobDao.delete(EmpanelJob.class, id);
	}
}
