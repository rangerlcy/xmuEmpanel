package com.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.pojo.Entryform;
import com.pojo.EntryformFamily;

@Service
public class EntryFormService {
	private Logger logger = LogManager.getLogger(EntryFormService.class);
	@Autowired
	BaseDao<Entryform> entryFormDao;
	@Autowired
	BaseDao<EntryformFamily> entryFormFamilyDao;
	@Autowired
	EmpanelService empanelService;
	@Autowired
	EntryFormFamilyService entryFormFamilyService;
	//查
	public List<Entryform> queryAll() {
		String hql = "from Entryform";
		List<Entryform> list = entryFormDao.queryList(hql, null);
		return list;
	}
	//查报名人员最新的一张报名表，即empanel=null,报名表还没有绑定到某个选任工作上
	public Entryform queryByUsername(String username){
		String hql = "from Entryform ef where ef.empanel is null and ef.user.loginUser.username =?";
		List<Entryform> list = entryFormDao.queryList(hql, new Object[]{username});
		if(list.isEmpty()){
			return null;
		}
		return list.get(0);
	}
	
	//根据选任id来查，是否有报名表已经绑定到这个选任id上了
	public boolean queryIsBindEmpanelId(String username,int id){
		String hql = "from Entryform ef where ef.user.loginUser.username=? and ef.empanel.id=?";
		List<Entryform> list = entryFormDao.queryList(hql, new Object[]{username, id});
		if(list.isEmpty()){
			return false;
		}
		return true;
	}
	
	//根据用户名和选任工作id查询出报名信息，如果为空则只根据用户名查询报名信息
	public Entryform queryByUsernameAndEmpanelId(String username,
			Integer empanelId) {
		// TODO Auto-generated method stub
		String hql="from Entryform ef where ef.empanel.id=? and ef.user.loginUser.username=?";
		List<Entryform> list = entryFormDao.queryList(hql, new Object[]{empanelId, username});
		if(list.isEmpty()){
			hql = "from Entryform ef where ef.empanel is null and ef.user.loginUser.username =?";
			List<Entryform> list1 = entryFormDao.queryList(hql, new Object[]{username});
			if(list1.isEmpty()){
				return null;
			}
			return list1.get(0);
		}else{
			return list.get(0);
		}
	}
	
	
	//增
	public void addOneItem(Entryform data){
		entryFormDao.save(data);
	}
	
	//将最新的报名表复制一份与选任工作绑定
	public void saveLastTableToFix(Entryform ef) {
		Entryform a = ef.clone();
		a.setId(null);
//		a.setEmpanel(empanel); 在controller已经把empanel set好了
		entryFormDao.save(a);
		
		//克隆一组家庭成员list
		List<EntryformFamily> effList = new ArrayList<EntryformFamily>();
		for(EntryformFamily eff: entryFormFamilyService.queryByEntryFormId(ef.getId())){
			EntryformFamily eeff = eff.clone();
			eeff.setEntryform(a);
			eeff.setId(null);
			effList.add(eeff);
		}
		
		for(EntryformFamily eff: effList){
			entryFormFamilyDao.save(eff);
		}
		
	}
	
	//更新
	public void update(Entryform ef){
		entryFormDao.update(ef);
	}
	
	public void saveOrUpdate(Entryform ef){
		entryFormDao.saveOrUpdate(ef);
	}
	
	//真删除
	public void update(int id){
		Entryform ef = entryFormDao.findOne(Entryform.class, id);
		entryFormDao.delete(ef);
	}
	
	//伪删除，更新del_flag位
	public void fakeDeleteById(Integer id){
		Entryform ef = entryFormDao.findOne(Entryform.class, id);
		//删除用户
		//ef.setDelFlag(0);//置位为0， 删除
		entryFormDao.update(ef);
	}
	
	
	
	
	
}
