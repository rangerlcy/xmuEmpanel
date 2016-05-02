package com.service;

import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.pojo.EntryformFamily;


@Service
public class EntryFormFamilyService {
	private Logger logger = LogManager.getLogger(EntryFormFamilyService.class);
	
	@Autowired
	BaseDao<EntryformFamily> entryFormFamilyDao;
	
	//根据entryformid查出list
	public List<EntryformFamily> queryByEntryFormId(int id){
		String hqlString="from EntryformFamily ff where ff.entryform.id=?";
		List<EntryformFamily> list = entryFormFamilyDao.queryList(hqlString, new Object[]{id});
		return list;
	}
	
	//添加或者更新数据
	public void addOneItem(EntryformFamily ff){
		entryFormFamilyDao.saveOrUpdate(ff);
	}
	
	//根据list删除数据
	public void deleteByList(List<EntryformFamily> list){
		for(int i=0;i<list.size();i++){
			entryFormFamilyDao.delete(list.get(i));
		}
	}
	
}
