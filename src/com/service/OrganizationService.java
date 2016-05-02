package com.service;

import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.pojo.Organization;


@Service
public class OrganizationService {
	private Logger logger = LogManager.getLogger(OrganizationService.class);
	@Autowired
	BaseDao<Organization> organizationDao;
	
	public List<Organization> queryAll() {
		String hql = "from Organization";
		List<Organization> list = organizationDao.queryList(hql, null);
		return list;
	}
	
	public Organization queryOrganizationByName(String name){
		String hql="from Organization o where o.name=?";
		List<Organization> list = organizationDao.queryList(hql, new Object[]{name});
		if(list.isEmpty()){
			return null;
		}
		return list.get(0);
	}
	
	public Organization queryOrganizationById(int id){
		String hql = "from Organization o where o.id=?";
		List<Organization> list = organizationDao.queryList(hql, new Object[]{id});
		if(list.isEmpty()){
			return null;
		}
		return list.get(0);
	}
}
