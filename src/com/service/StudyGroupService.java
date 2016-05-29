package com.service;

import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.model.page.Page;
import com.pojo.Entryform;
import com.pojo.Studygroup;

@Service
public class StudyGroupService {
	private Logger logger = LogManager.getLogger(StudyGroupService.class);
	@Autowired
	BaseDao<Studygroup> studygroupDao;
	
	
	public Studygroup queryByUsername(String username){
		
		String hql = "from Studygroup sg where sg.loginUser.username=?";
		
		List<Studygroup> sgList = studygroupDao.queryList(hql, new Object[]{username});
		if(sgList.size()>0){
			return sgList.get(0);
		}
		return null;
	}
	
	public void update(Studygroup sg){
		studygroupDao.update(sg);
	}
	
	public Studygroup queryById(int id) {
		// TODO Auto-generated method stub
		String hql = "from Studygroup sg where sg.id=?";
		
		List<Studygroup> sgList = studygroupDao.queryList(hql, new Object[]{id});
		if(sgList.size()>0){
			return sgList.get(0);
		}
		return null;
	}
	
	//添加一个考察组
	public void addOneItem(Studygroup studygroup) {
		// TODO Auto-generated method stub
		studygroupDao.save(studygroup);
	}
	
	//分页查询未被删除的常设考察组
	public Page<Studygroup> queryByPageToGetNoDeletePSG(String pSGName, Integer orgId, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		Page<Studygroup> page = new Page<Studygroup>();
		
		String hql = "from Studygroup sg where sg.isTemp=0 and sg.delFlag=0 ";
		if(pSGName!=null && !pSGName.trim().equals("")){
			hql += " and sg.name like '%"+pSGName+"%' ";
		}
		
		if(orgId!=null){
			hql += " and sg.organizationId="+orgId;
		}
		
		List<Studygroup> Studygroups = studygroupDao.findForPage(hql, null, currentPage, pageSize);
		int count = studygroupDao.findforCount("select count(*) "+hql, null);
			
		page.setCurrPage(currentPage);
		page.setPageSize(pageSize);
		page.setResult(Studygroups);
		page.setTotalSize(count);
		return page;
	}
}
