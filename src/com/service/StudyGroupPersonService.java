package com.service;

import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.pojo.StudygroupPerson;
import com.pojo.StudygroupPersonStore;

@Service
public class StudyGroupPersonService {
	private Logger logger = LogManager.getLogger(DegreeService.class);
	@Autowired
	BaseDao<StudygroupPerson> studygroupPersonDao;
	

	public void addOneItem(StudygroupPerson studygroupPerson) {
		// TODO Auto-generated method stub
		studygroupPersonDao.save(studygroupPerson);
	}
	
	//根据考察组id 查询出该组下的所有成员
	public List<StudygroupPerson> queryByStudygroupIdToGetPersons(Integer id) {
		// TODO Auto-generated method stub
		
		String hql = "from StudygroupPerson sgp where sgp.studygroup.id=?";
		List<StudygroupPerson> studygroupPersons = studygroupPersonDao.queryList(hql, new Object[]{id});
		if(studygroupPersons==null || studygroupPersons.size()<=0){
			return null;
		}
		
		return studygroupPersons;
	}
	
}
