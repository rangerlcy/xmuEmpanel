package com.service;

import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.pojo.Degree;

@Service
public class DegreeService {
	private Logger logger = LogManager.getLogger(DegreeService.class);
	@Autowired
	BaseDao<Degree> degreeDao;
	
	public List<Degree> queryAll() {
		String hql = "from Degree";
		List<Degree> list = degreeDao.queryList(hql, null);
		return list;
	}
}
