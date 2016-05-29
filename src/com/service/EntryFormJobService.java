package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.pojo.EntryformJob;


@Service
public class EntryFormJobService {
	@Autowired
	BaseDao<EntryformJob> entryformJobDao;
	
	//查询, 根据报名表id + 工作岗位id， 即empanel_job->id来查, 查到的结果要么为空，要么唯一
	public EntryformJob queryByEntryformIdAndEmpanelJobId(int entryformId, int EmpanelJobId){
		String hql = "from EntryformJob efj where efj.entryform.id=? and efj.empanelJob.id=?";
		List<EntryformJob> list = entryformJobDao.queryList(hql, new Object[]{entryformId , EmpanelJobId});
		if(list.size()>1){
			System.out.println("出现了和预想结果不一致的错误");
		}
		if(list.size() ==0){
			return null;
		}
		return list.get(0);
	}
	
	//查询，根据报名表id查询，所报的岗位，按岗位id聚集
	public List<EntryformJob> queryByEntryformId(int entryformId){
		String hql = "from EntryformJob efj where efj.entryform.id=?";
		List<EntryformJob> entryformJobs = entryformJobDao.queryList(hql, new Object[]{entryformId});
		return entryformJobs;
	}
	
	
	//增
	public void addOneItem(EntryformJob data){
		entryformJobDao.save(data);
	}
	
}
