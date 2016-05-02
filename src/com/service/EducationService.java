package com.service;

import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.pojo.Education;

@Service
public class EducationService {
	private Logger logger = LogManager.getLogger(EducationService.class);
	@Autowired
	BaseDao<Education> eduDao;
	
	public List<Education> queryAll() {
		String hql = "from Education";
		List<Education> list = eduDao.queryList(hql, null);
		return list;
	}
	
}
