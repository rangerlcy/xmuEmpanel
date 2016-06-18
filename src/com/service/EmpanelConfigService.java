package com.service;

import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.pojo.EmpanelConfig;

@Service
public class EmpanelConfigService {
	private Logger logger = LogManager.getLogger(EmpanelConfigService.class);
	@Autowired
	BaseDao<EmpanelConfig> empanelConfigDao;
	
	public EmpanelConfig queryByName(String name){
		String hql = "from EmpanelConfig ec where ec.configName=?";
		List<EmpanelConfig> configs = empanelConfigDao.queryList(hql, new Object[]{name});
		if(configs == null || configs.size()<=0){
			return null;
		}
		if(configs.size()>1){
			System.out.println("警告：出现与预期结果不一致的问题，根据名称查询得到的选任流程配置应该唯一，但目前结果不唯一");
		}
		return configs.get(0);
	}
}
