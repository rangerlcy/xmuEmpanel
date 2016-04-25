package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.pojo.LoginUser;

@Service
public class UserService {
	@Autowired
	BaseDao<LoginUser> LoginUserDao;
	
	public List<LoginUser> queryAll(){
		return LoginUserDao.queryList("from LoginUser", new Object[]{});
	}
	
	public LoginUser findByUsername(String username){
		String sql = "from LoginUser where username=? ";
		List<LoginUser> result = LoginUserDao.queryList(sql,new Object[]{username});
		if(result.size() == 0){
			return null;				
		}else{
			return result.get(0); 
		}
	}
	
}
