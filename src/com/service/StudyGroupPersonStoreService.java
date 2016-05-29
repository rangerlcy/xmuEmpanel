package com.service;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.pojo.StudygroupPersonStore;

@Service
public class StudyGroupPersonStoreService {
	
	private Logger logger = LogManager.getLogger(StudyGroupPersonStoreService.class);
	
	@Autowired
	BaseDao<StudygroupPersonStore> studyGroupPersonStoreDao;
	
	//添加常设考察组成员
	public void addPSGMember(StudygroupPersonStore studygroupPersonStore){
		studyGroupPersonStoreDao.save(studygroupPersonStore);
	}
}
