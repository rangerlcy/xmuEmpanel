package com.service;

import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.pojo.LoginUser;

@Service
public class LoginUserService {
	
	private Logger logger = LogManager.getLogger(LoginUserService.class);
	@Autowired
	BaseDao<LoginUser> loginUserDao;
	
	
	//重置密码
	public void updatePSW(LoginUser loginUser){
		loginUserDao.update(loginUser);
	}

	//添加一个考察组账号
	public void addStudygroup(LoginUser studygroupUser) {
		// TODO Auto-generated method stub
		
		loginUserDao.save(studygroupUser);
	}
	
	//删除一个账号，真删除
	public void deleteOneItem(LoginUser loginUser) {
		// TODO Auto-generated method stub
		loginUserDao.delete(loginUser);
	}

	public LoginUser queryByUsername(String username) {
		// TODO Auto-generated method stub
		String hql = "from LoginUser lu where lu.username=?";
		List<LoginUser> loginUsers = loginUserDao.queryList(hql, new Object[]{username});
		if(loginUsers==null || loginUsers.size()<=0){
			return null;
		}
		return loginUsers.get(0);
	}
}
