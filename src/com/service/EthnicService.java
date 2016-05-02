package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.pojo.Ethnic;

@Service
public class EthnicService {
	@Autowired
	BaseDao<Ethnic> ethnicDao;
	
	
	public List<Ethnic> queryAll() {
		// TODO Auto-generated method stub
		return ethnicDao.queryList("from Ethnic", null);
	}
	
	public void add(Ethnic e){
		ethnicDao.save(e);
	}
	
	public void deleteById(int id){
		ethnicDao.delete(Ethnic.class, id);
	}
	
	public void Update(Ethnic e){
		ethnicDao.update(e);
	}
}
