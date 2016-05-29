package com.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.page.Page;
import com.dao.BaseDao;
import com.pojo.Entryform;
import com.pojo.EntryformFamily;
import com.pojo.EntryformJob;

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
	@Autowired
	EntryFormJobService entryFormJobService;
	
	//分页查询出最新的个人信息
	public Page<Entryform> queryByPage(String queryName, String queryOrganization,int currPage,int pageSize){
		
		Page<Entryform> page = new Page<Entryform>();
		
		String hql = "from Entryform ef where ef.empanel is null ";
		if(queryName !=null && !queryName.trim().equals("")){
			hql += "and ef.name like '%"+queryName+"%' ";
		}
		if(queryOrganization !=null && !queryOrganization.trim().equals("")){
			hql += "and ef.organization.name like '%"+queryOrganization+"%' ";
		}
		
		List<Entryform> entryforms = entryFormDao.findForPage(hql, null, currPage, pageSize);
		int count = entryFormDao.findforCount("select count(*) "+hql, null);
			
		page.setCurrPage(currPage);
		page.setPageSize(pageSize);
		page.setResult(entryforms);
		page.setTotalSize(count);
		return page;
	}
	//查
	public List<Entryform> queryAll() {
		String hql = "from Entryform";
		List<Entryform> list = entryFormDao.queryList(hql, null);
		return list;
	}
	
	//查在当前所有有效的选任工作中，判断xx岗位下是否有报名人员
	//@return List<Entryform> list
	public List<Entryform> queryWhetherOrNotRegisterPerson(int orgId) {
		String hql = "from Entryform ef where ef.empanel.isRealease=1 and ef.empanel.delFlag=0 and ef.organization.id=?";
		List<Entryform> list = entryFormDao.queryList(hql, new Object[]{orgId});
		return list;
	}
	
	//查在本单位下某选任工作中，的所有报名表
	public List<Entryform> queryByOrgIdAndEmpanelId(int orgId, int empanelId) {
		String hql = "from Entryform ef where ef.empanel.id=? and ef.empanel.isRealease=1 and ef.empanel.delFlag=0 and ef.organization.id=?";
		List<Entryform> list = entryFormDao.queryList(hql, new Object[]{empanelId, orgId});
		return list;
	}
	
	//查某教职工在某选任中的状态，是否绑定报名表，是否已经报名
	public String queryByUsernameAndEmpanelIdToGetState(int empanelId, String username){
		
		String hql = "from Entryform ef where ef.empanel.id=? and ef.user.loginUser.username=?";
		List<Entryform> entryforms = entryFormDao.queryList(hql, new Object[]{empanelId, username});
		
		//这里正常来说一个选任工作最多只会绑定一张报名表
		if(entryforms.size()>1){
			System.out.println("出现了和预想结果不一致的错误，数据库中各项数据约束出现了设计上的错误");
		}
		
		if(entryforms.size()==0){
			return "尚未绑定报名表";
		}
		else{
			List<EntryformJob> entryformJobs = entryFormJobService.queryByEntryformId(entryforms.get(0).getId());
			if(entryformJobs.size()==0){
				return "绑定了报名表但是还未报名";
			}
			else{
				return "已经完成报名";
			}
		}
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
	// 一个人在一个选任任务中 只会有一张报名表 
	public int queryIsBindEmpanelId(String username,int id){
		String hql = "from Entryform ef where ef.user.loginUser.username=? and ef.empanel.id=?";
		List<Entryform> list = entryFormDao.queryList(hql, new Object[]{username, id});
		if(list.isEmpty()){
			return -1;
		}
		if(list.size()>1){
			System.out.println("出现了和预想结果不一致的错误");
		}
		return list.get(0).getId();
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
		
		a.clearSet();
		
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
		System.out.println("!@!@ZZZXXA"+ef.getPicUrl());		//这里不输出一下好像有时不会更新？？不知道为什么
		entryFormDao.update(ef);
	}
	
	public void saveOrUpdate(Entryform ef){
		entryFormDao.saveOrUpdate(ef);
	}
	
	//真删除
	public void delete(int id){
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
	
	//根据id查询
	public Entryform queryById(int id) {
		// TODO Auto-generated method stub
		String hql = "from Entryform ef where ef.id=? ";
		List<Entryform> entryforms = entryFormDao.queryList(hql, new Object[]{id});
		
		if(entryforms == null || entryforms.size()<=0){
			return null;
		}
		
		if(entryforms.size()>1){
			System.out.println("出现了和预期不一致的错误");
		}
		
		return entryforms.get(0);
		
	}
	
	//根据用户id查询历史报名
	public List<Entryform> queryByUserId(int uid) {
		// TODO Auto-generated method stub
		
		String hql = "from Entryform ef where ef.user.id=? and ef.empanel is not null";
		List<Entryform> entryforms = entryFormDao.queryList(hql, new Object[]{uid});
		
		if(entryforms == null || entryforms.size()<=0){
			return null;
		}
		
		return entryforms;
	}
	
	
	
	
	
}
