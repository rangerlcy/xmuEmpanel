package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.pojo.Entryform;
import com.pojo.LoginUser;
import com.pojo.User;

@Service
public class UserService {
	@Autowired
	BaseDao<LoginUser> LoginUserDao;
	@Autowired
	BaseDao<User> userDao;
	
	public List<LoginUser> queryAllLoginUser(){
		return LoginUserDao.queryList("from LoginUser", new Object[]{});
	}
	
	public List<User> queryAllUser() {
		// TODO Auto-generated method stub
		return userDao.queryList("from User", null);
	}
	
	public LoginUser loginUserFindByUsername(String username){
		String sql = "from LoginUser where username=? ";
		List<LoginUser> result = LoginUserDao.queryList(sql,new Object[]{username});
		if(result.size() == 0){
			return null;				
		}else{
			return result.get(0); 
		}
	}
	
	public User userFindByUsername(String username){
		String sql = "from User u where u.loginUser.username=? ";
		List<User> result = userDao.queryList(sql,new Object[]{username});
		if(result.size() == 0){
			return null;				
		}else{
			return result.get(0); 
		}
	}
	
	
	public void addNewUser(LoginUser loginuser, User user){
		LoginUserDao.save(loginuser);
		userDao.save(user);
	}

	
	
}
