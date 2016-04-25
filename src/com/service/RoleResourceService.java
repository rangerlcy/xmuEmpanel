package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.pojo.RoleResource;

@Service
public class RoleResourceService {
	
	@Autowired
	BaseDao<RoleResource> roleResourceDao;

	public List<RoleResource> getUrlByRoleId(Integer userRoleId) {
		// TODO Auto-generated method stub
		String hqlString = " from RoleResource where roleId=?";
		List<RoleResource> result = roleResourceDao.queryList(hqlString,new Object[]{userRoleId});	
		return result;
	}

}
