package com.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.common.WebApplication;
import com.pojo.Empanel;
import com.pojo.EmpanelJob;
import com.pojo.Entryform;
import com.pojo.LoginUser;
import com.pojo.Organization;
import com.pojo.StaffEmpanelState;
import com.pojo.Studygroup;
import com.pojo.Sysrole;
import com.service.EmpanelJobService;
import com.service.EmpanelService;
import com.service.EntryFormService;
import com.service.OrganizationService;
import com.service.StudyGroupService;
import com.service.SysRoleService;
import com.service.UserService;


@Controller
public class LoginController {
	@Autowired
	UserService userService;
	@Autowired
	SysRoleService roleService;
	@Autowired
	StudyGroupService studyGroupService;
	@Autowired
	OrganizationService organizationService;
	@Autowired
	EmpanelService empanelService;
	@Autowired
	EntryFormService entryFormService;
	@Autowired
	EmpanelJobService empanelJobService;
	
	@RequestMapping("/index.do")
	public String welcome(Model model){
		if (WebApplication.getCurrUser().getUsername() != null ){
			String ssString = WebApplication.getCurrUser().getUsername();
			LoginUser user = userService.loginUserFindByUsername(ssString);
			Sysrole role =  roleService.getRoleNameByRoleId(user.getRoleId()).get(0);
			model.addAttribute("user", user);
			model.addAttribute("role", role);
			
			int roleId = user.getRoleId();
			switch (roleId) {
			
			//管理员的初始页
			case 1:
				return "admin/index";
				
			//组织部的初始页
			case 2:
				List<Empanel> empanellist = empanelService.queryAllValidOrNoRelease();
				model.addAttribute("empanel", empanellist);
				
				return "org/index";
				
			//常设考察组的初始页
			case 3:
				Studygroup sg = studyGroupService.queryByUsername(ssString);
				assert sg!=null;
				
				Organization org = organizationService.queryOrganizationById(sg.getOrganizationId());
				model.addAttribute("org_name", org.getName());
				
				//获得本单位下的选任工作 , 按以下3步进行
				//1、得到当前有效的且正在进行的选任工作
				//2、检查报名人员中是否有本单位下的
				//3、检查本单位是否提供了岗位
				List<Entryform> elist = entryFormService.queryWhetherOrNotRegisterPerson(sg.getOrganizationId());	//本单位下所有的报名人员
				
				//把有重复的选任工作去除
				for(int i=0;i<elist.size();i++){
					for(int j=i+1; j<elist.size(); j++){
						if(elist.get(i).getEmpanel().getId() == elist.get(j).getEmpanel().getId()){
							elist.remove(j);
							j--;
						}
					}
				}
				
				if(elist!=null){
					model.addAttribute("checkWork", elist);		//需要处理的考察工作
				}
				
				//依据本单位在某次选任中是否发布了岗位
				List<EmpanelJob> ejList = empanelJobService.queryByOrgIdAndEmpanelValid(sg.getOrganizationId());	//本单位发布了岗位
				
				//把重复的选任工作去除
				for(int i=0; i<ejList.size(); i++){
					for(int j=i+1; j<ejList.size(); j++){
						if(ejList.get(i).getEmpanel().getId() == ejList.get(j).getEmpanel().getId()){
							ejList.remove(j);
							j--;
						}
					}
				}
				if(ejList!=null){
					model.addAttribute("empanelWork", ejList);	//需要处理选任工作
				}
				
				return "permstudygroup/index";
				
			//临时考察组的初始页
			case 4:
				return "tempstudygroup/index";
			
			//教职工初始页
			case 5:
				//查询出当前正在进行的选任以及状态
				List<StaffEmpanelState> staffEmpanelStates = new ArrayList<StaffEmpanelState>();
				
				String username = WebApplication.getCurrUser().getUsername();
				List<Empanel> empanels = empanelService.queryAllValid();
				for(Empanel empanel: empanels){
					int empanelId = empanel.getId();
					String state = entryFormService.queryByUsernameAndEmpanelIdToGetState(empanelId, username);
					
					StaffEmpanelState staffEmpanelState = new StaffEmpanelState();
					staffEmpanelState.setEmpanel(empanel);
					staffEmpanelState.setState(state);
					staffEmpanelStates.add(staffEmpanelState);
				}
				model.addAttribute("staffEmpanelState", staffEmpanelStates);
				
				return "staff/index";
	
			default:			
				break;
			}
		}
		return "403";
	}
	
	@RequestMapping("/test.do")
	public String test(Model model){
		return "staff/staff_info";
	}
}
