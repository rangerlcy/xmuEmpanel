package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.pojo.PartyName;


@Service
public class PartyNameService {
	@Autowired
	BaseDao<PartyName> partyNameDao;
	
	public List<PartyName> queryAll(){
		return partyNameDao.queryList("from PartyName", null);
	}
}
