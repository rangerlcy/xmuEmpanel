package com.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.pojo.RoleResource;
import com.pojo.Sysrole;

@Service
public class SysRoleService {
	private Logger logger = LogManager.getLogger(SysRoleService.class);
	@Autowired
	BaseDao<Sysrole> sysRoleDao;
	@Autowired
	BaseDao<RoleResource> roleResourceDao;
	
	/**
	 * 根据主键查询角色信息
	 * @param roleId
	 * @return
	 */
	public Sysrole queryById(Integer roleId){
		return sysRoleDao.findOne(Sysrole.class, roleId);
	}
	
	/**
	 * 查询出所有角色列表
	 * @param role
	 * @return
	 */
	public List<Sysrole> queryAll() {
		String hql = " from SysRole ";
		return sysRoleDao.queryList(hql, null);
	}
	
	/**
	 * 根据条件查询出角色列表
	 * @param role
	 * @return
	 */
	public List<Sysrole> queryList(String queryStr) {
		String hql = generateQueryExample(queryStr);
		return sysRoleDao.queryList(hql, null);
	}
	
	
	/**
	 * 封装查询条件
	 * @param role
	 * @return
	 */
	private String generateQueryExample(String queryStr) {
		String hql = " from SysRole ";
		if(StringUtils.isNotBlank(queryStr)) {
			hql += " where name like '%"+queryStr+"%' or remark like '%"+queryStr+"%'";
		}
		return hql;
	}

	public List<Sysrole> getRoleNameByRoleId(Integer userRoleId) {
		// TODO Auto-generated method stub
		String hqlString = " from Sysrole where id=?";
		
		List<Sysrole> result = sysRoleDao.queryList(hqlString,new Object[]{userRoleId});	
		return result;
	}
}
