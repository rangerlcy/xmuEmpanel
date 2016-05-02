package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.pojo.EmpanelJob;
import com.pojo.Organization;


@Service
public class EmpanelJobService {
	@Autowired
	BaseDao<EmpanelJob> empanelJobDao;
	
	public List<EmpanelJob> queryByEmpanelId(int id){
		String hqlString = "from EmpanelJob ej where ej.empanel.id=?";
		return empanelJobDao.queryList(hqlString, new Object[]{id});
		
	}
	
	public Organization queryOrganizationByEmpanelJobId(int id){
		EmpanelJob eJob = empanelJobDao.findOne(EmpanelJob.class, id);
		return eJob.getOrganization();
	}
}
