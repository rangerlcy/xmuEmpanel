package com.controller.org;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.apache.poi.hssf.dev.EFBiffViewer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.model.page.Page;
import com.common.WebApplication;
import com.pojo.Empanel;
import com.pojo.EmpanelConfig;
import com.pojo.EmpanelJob;
import com.pojo.Entryform;
import com.pojo.EntryformFamily;
import com.pojo.EntryformJob;
import com.pojo.LoginUser;
import com.pojo.Organization;
import com.pojo.Studygroup;
import com.pojo.StudygroupPerson;
import com.pojo.StudygroupPersonStore;
import com.pojo.WebDataEmpanel;
import com.security.service.LoginUserDetailServiceImpl;
import com.service.EmpanelConfigService;
import com.service.EmpanelJobService;
import com.service.EmpanelService;
import com.service.EntryFormFamilyService;
import com.service.EntryFormJobService;
import com.service.EntryFormService;
import com.service.LoginUserService;
import com.service.OrganizationService;
import com.service.StudyGroupPersonService;
import com.service.StudyGroupPersonStoreService;
import com.service.StudyGroupService;


@Controller
@RequestMapping("/org")
public class OrgIndexController {
	
	@Autowired
	OrganizationService organizationService;
	@Autowired
	EmpanelService empanelService;
	@Autowired
	EmpanelJobService empanelJobService;
	@Autowired
	StudyGroupPersonService studyGroupPersonService;
	@Autowired
	StudyGroupService studyGroupService;
	@Autowired
	LoginUserService loginUserService;
	@Autowired
	StudyGroupPersonStoreService studyGroupPersonStoreService;
	@Autowired
	EntryFormService entryFormService;
	@Autowired
	EntryFormFamilyService entryFormFamilyService;
	@Autowired
	EntryFormJobService entryFormJobService;
	@Autowired
	EmpanelConfigService empanelConfigService;
	
	@RequestMapping("/org_index.do")
	public String org_index(Model model){
		model.addAttribute("username", WebApplication.getCurrUser().getUsername());
		return "org/org_index";
	}
	
	//打开创建新的选任
	@RequestMapping("/create_new_empanel.do")
	public String create_new_empanel(Model model){
		model.addAttribute("username", WebApplication.getCurrUser().getUsername());
		
		List<Organization> organizations = organizationService.queryAll();
		model.addAttribute("org", organizations);
		
		return "org/create_new_empanel";
	}
	
	//提交保存新的选任
	@RequestMapping("/save_new_empanel.do")
	@ResponseBody
	public String save_new_empanel(Model model, WebDataEmpanel webData ) throws UnsupportedEncodingException{
		
		
		Empanel empanel = new Empanel();
		
		if(webData.getType()==null || webData.getType().equals("")){
			return URLEncoder.encode("选任类型必须填写", "UTF-8");
		}else{
			empanel.setType(webData.getType());
		}
		
		if(webData.getStatus()==null || webData.getStatus().equals("")){
			return URLEncoder.encode("选任流程必须填写", "UTF-8");
		}else{
			EmpanelConfig config = empanelConfigService.queryByName(webData.getStatus());
			if(config==null){
				System.out.println("找不到选任流程，出现错误，正常情况下一个选任工作必须有一个给定的流程");
				empanel.setEmpanelConfig(null);
			}
			empanel.setEmpanelConfig(config);
		}
		
		if(webData.getEmpanel_name()==null ||webData.getEmpanel_name().equals("")){
			return URLEncoder.encode("选任名称必须填写", "UTF-8");
		}else{
			empanel.setName(webData.getEmpanel_name());
		}
		try {
			empanel.setAvgMaxNum(Integer.parseInt(webData.getMaxnum()));
		} catch (NumberFormatException e) {
			// TODO: handle exception
			empanel.setAvgMaxNum(0);
		}
		empanel.setDelFlag((short) 0);
		empanel.setEndTime(webData.getEnd_register_year()+"-"+webData.getEnd_register_month()+"-"+webData.getEnd_register_day());
		empanel.setStartTime(webData.getStart_register_year()+"-"+webData.getStart_register_month()+"-"+webData.getStart_register_day());
		empanel.setFlow("未发布");
		empanel.setIsRealease((short) 0);
		empanel.setPlan(webData.getPlan());
		
		empanelService.addOneEmpanel(empanel);
		
		if(webData.getOrganization().length>1){		//有选任岗位
			//检查数据完整性
			for(int i=1;i<webData.getOrganization().length; i++){
				if( !checkStringValid( webData.getOrganization()[i] ) || !checkStringValid( webData.getLevel()[i] ) || !checkStringValid( webData.getJobNumber()[i] )|| !checkStringValid( webData.getJobName()[i] )){
					return URLEncoder.encode("选任岗位的信息没有填写完整", "UTF-8");
				}
			}
			
			//检查完毕
			EmpanelJob empanelJob = new EmpanelJob();
			for(int i=1;i<webData.getOrganization().length; i++){
				empanelJob.setEmpanel(empanel);
				try {
					empanelJob.setAmount(Integer.parseInt(webData.getJobNumber()[i]));
				} catch (NumberFormatException e) {
					// TODO: handle exception
					empanelJob.setAmount(0);
				}
				
				empanelJob.setJob(webData.getJobName()[i]);
				empanelJob.setLevel(webData.getLevel()[i]);
				
				Organization organization = organizationService.queryOrganizationByName(webData.getOrganization()[i]);
				empanelJob.setOrganization(organization);
				empanelJobService.addOneItem(empanelJob);
			}
		}
		return URLEncoder.encode("保存成功", "UTF-8");
	}
	
	//打开正在进行的选任工作
	@RequestMapping("preview_empanel.do")
	public String preview_empanel(Model model){
		model.addAttribute("username", WebApplication.getCurrUser().getUsername());
		
		List<Empanel> empanellist = empanelService.queryAllValidOrNoRelease();
		model.addAttribute("empanel", empanellist);
		return "org/preview_empanel";
	}
	
	//打开选任工作详细情况, 根据发送过来的选任id进行相应处理
	@RequestMapping("preview_empanel_detail.do")
	public String preview_empanel_detail(Model model, String empanelId){
		model.addAttribute("username", WebApplication.getCurrUser().getUsername());
		List<Empanel> empanellist = empanelService.queryAllValidOrNoRelease();
		model.addAttribute("empanel", empanellist);
		List<Organization> organizations = organizationService.queryAll();
		model.addAttribute("org", organizations);
		
		int empanel_Id;
		try {
			empanel_Id = Integer.parseInt(empanelId);		//这里出现异常则很可能是有人尝试sql注入
		} catch (NumberFormatException e) {
			// TODO: handle exception
			empanel_Id = -1;							//让id无效，将查询出结果为null
		}
		
		Empanel empanel = empanelService.queryById(empanel_Id);
		
		model.addAttribute("empanel_detail", empanel);
		List<EmpanelJob> empanelJobs = empanelJobService.queryByEmpanelId(empanel_Id);
		model.addAttribute("empanel_jobs", empanelJobs);
		
		if(empanel.getIsRealease()==0){		//未发布
			return "org/preview_empanel_noRelease";
		}
		else{		//已发布
			String flow = empanel.getFlow();
			int progress=0;
			if(flow.equals("报名阶段")){
				progress=1;
			}
			if(flow.equals("分配考察组")){
				progress=2;
			}
			if(flow.equals("考察阶段")){
				progress=3;
			}
			if(flow.equals("酝酿人选")){
				progress=4;
			}
			if(flow.equals("征求纪委意见")){
				progress=5;
			}
			if(flow.equals("公示阶段")){
				progress=6;
			}
			if(flow.equals("报批阶段")){
				progress = 7;
			}
			if(flow.equals("收尾阶段")){
				progress=8;
			}
			if(flow.equals("已完成")){
				progress=9;
			}
			model.addAttribute("prog", progress);
			return "org/preview_empanel_release";
		}
		
	}
	
	
	//更新未发布的选任
	@RequestMapping("update_empanel.do")
	@ResponseBody
	public String update_empanel(Model model, WebDataEmpanel webData) throws UnsupportedEncodingException{
		int empanelId;
		try {
			empanelId = Integer.parseInt(webData.getEmpanelId());
		} catch (NumberFormatException e) {
			// TODO: handle exception
			empanelId = -1;
			return URLEncoder.encode("数据出现问题，保存失败", "UTF-8");		//出现异常说明逻辑出现了问题或者有人伪造数据发包
		}
		
		Empanel empanel = empanelService.queryById(empanelId);
		empanel.setPlan(webData.getPlan());
		int amount;
		try {
			amount = Integer.parseInt(webData.getMaxnum());
		} catch (NumberFormatException e) {
			// TODO: handle exception
			amount = 0;
		}
		empanel.setAvgMaxNum(amount);
		
		//年月日三个数据均有效时才更新
		if(checkStringValid(webData.getStart_register_year()) && checkStringValid(webData.getStart_register_month()) && checkStringValid(webData.getStart_register_day())){
			empanel.setStartTime(webData.getStart_register_year()+"-"+webData.getStart_register_month()+"-"+webData.getStart_register_day());
		}
		if(checkStringValid(webData.getEnd_register_year()) && checkStringValid(webData.getEnd_register_month()) && checkStringValid(webData.getEnd_register_day())){
			empanel.setEndTime(webData.getEnd_register_year()+"-"+webData.getEnd_register_month()+"-"+webData.getEnd_register_day());
		}
		
		empanelService.update(empanel);
		
		if(webData.getOrganization().length>1){		//新添加选任岗位
			//检查数据完整性
			for(int i=1;i<webData.getOrganization().length; i++){
				if( !checkStringValid( webData.getOrganization()[i] ) || !checkStringValid( webData.getLevel()[i] ) || !checkStringValid( webData.getJobNumber()[i] )|| !checkStringValid( webData.getJobName()[i] )){
					return URLEncoder.encode("选任岗位的信息没有填写完整", "UTF-8");
				}
			}
			
			//检查完毕
			EmpanelJob empanelJob = new EmpanelJob();
			for(int i=1;i<webData.getOrganization().length; i++){
				empanelJob.setEmpanel(empanel);
				try {
					empanelJob.setAmount(Integer.parseInt(webData.getJobNumber()[i]));
				} catch (NumberFormatException e) {
					// TODO: handle exception
					empanelJob.setAmount(0);
				}
				
				empanelJob.setJob(webData.getJobName()[i]);
				empanelJob.setLevel(webData.getLevel()[i]);
				
				Organization organization = organizationService.queryOrganizationByName(webData.getOrganization()[i]);
				empanelJob.setOrganization(organization);
				empanelJobService.addOneItem(empanelJob);
			}
		}
		
		//删除一些岗位
		if(webData.getDelEmpanelJobId()!=null){
			for(int i=0;i<webData.getDelEmpanelJobId().length; i++){
				int id;
				try {
					id = Integer.parseInt(webData.getDelEmpanelJobId()[i]);
				} catch (NumberFormatException e) {
					// TODO: handle exception
					return URLEncoder.encode("删除旧岗位失败，数据出现问题", "UTF-8");
				}
				empanelJobService.deleteById(id);
			}
		}
		
		return URLEncoder.encode("保存成功", "UTF-8");
	}
	
	//发布一个选任工作
	@RequestMapping("release_empanel.do")
	@ResponseBody
	public String release_empanel(String empanelId) throws UnsupportedEncodingException{
		int id;
		try {
			id = Integer.parseInt(empanelId);
		} catch (NumberFormatException e) {
			// TODO: handle exception
			return URLEncoder.encode("发布失败", "UTF-8");
		}
		Empanel empanel = empanelService.queryById(id);
		//检查数据有效性
		if( !checkStringValid(empanel.getStartTime()) || !checkStringValid(empanel.getEndTime()) || !checkStringValid(empanel.getPlan()) || !(empanel.getAvgMaxNum()>0)){
			return URLEncoder.encode("数据不完整，发布失败", "UTF-8");
		}
		List<EmpanelJob> empanelJobs = empanelJobService.queryByEmpanelId(id);
		if(empanelJobs==null || empanelJobs.size()<=0){
			return URLEncoder.encode("岗位信息未填写，发布失败", "UTF-8");
		}
		
		empanel.setIsRealease((short) 1);
		empanel.setFlow("报名阶段");
		empanelService.update(empanel);
		return URLEncoder.encode("发布成功", "UTF-8");
	}
	
	//删除一个未发布的选任工作
	@RequestMapping("delete_empanel.do")
	@ResponseBody
	public String delete_empanel(String empanelId) throws UnsupportedEncodingException{
		int id;
		try {
			id = Integer.parseInt(empanelId);
		} catch (NumberFormatException e) {
			// TODO: handle exception
			return URLEncoder.encode("删除失败", "UTF-8");
		}
		
		//先把外键关联的数据删除
		List<EmpanelJob> empanelJobs = empanelJobService.queryByEmpanelId(id);
		if(empanelJobs!=null && empanelJobs.size()>0){
			for(EmpanelJob ej:empanelJobs){
				empanelJobService.deleteById(ej.getId());
			}
		}
		empanelService.deleteById(id);
		return URLEncoder.encode("删除成功", "UTF-8");
	}
	
	
	//打开选任流程管理
	@RequestMapping("selection_process_management.do")
	public String selection_process_management(Model model){
		model.addAttribute("username", WebApplication.getCurrUser().getUsername());
		return "org/selection_process_management";
	}
	
	//打开常设考察组管理
	@RequestMapping("PSG_management.do")
	public String PSG_management(Model model, String toPage, String PSGName, String org){
		model.addAttribute("username", WebApplication.getCurrUser().getUsername());
		
		List<Organization> organizations = organizationService.queryAll();
		model.addAttribute("org", organizations);
		
		model.addAttribute("PSGName", PSGName);
		model.addAttribute("orgName", org);
		
		Organization organization = organizationService.queryOrganizationByName(org);
		Integer orgId;
		if(organization!=null){
			orgId = organization.getId();
		}else{
			orgId = null;
		}
		
		Page<Studygroup> pageList;
		if(!checkStringValid(toPage)){
			pageList = studyGroupService.queryByPageToGetNoDeletePSG(PSGName, orgId, 1, 10);
		}
		else{
			int pagenum;
			try {
				pagenum = Integer.parseInt(toPage);
			} catch (NumberFormatException e) {
				// TODO: handle exception
				pagenum=1;
			}
			pageList = studyGroupService.queryByPageToGetNoDeletePSG(PSGName, orgId, pagenum, 10);
		}
		
		if(pageList.getResult()!=null && pageList.getResult().size()>0){
			List<Studygroup> sgList = pageList.getResult();
			for(int i=0; i<sgList.size(); i++){
				Organization o = organizationService.queryOrganizationById(sgList.get(i).getOrganizationId());
				sgList.get(i).setOrganization(o);
				
				List<StudygroupPerson> studygroupPersons = studyGroupPersonService.queryByStudygroupIdToGetPersons(sgList.get(i).getId());
				sgList.get(i).setPersons(studygroupPersons);
			}
		}
		
		
		model.addAttribute("pageList", pageList);
		
		return "org/PSG_management";
	}
	
	//常设考察组分页查询和翻页
	@RequestMapping("PSG_management_page.do")
	public String PSG_management_page(Model model, String toPage, String PSGName, String org){
		model.addAttribute("username", WebApplication.getCurrUser().getUsername());
		
		List<Organization> organizations = organizationService.queryAll();
		model.addAttribute("org", organizations);
		
		model.addAttribute("PSGName", PSGName);
		model.addAttribute("orgName", org);
		
		Organization organization = organizationService.queryOrganizationByName(org);
		Integer orgId;
		if(organization!=null){
			orgId = organization.getId();
		}else{
			orgId = null;
		}
		
		Page<Studygroup> pageList;
		if(!checkStringValid(toPage)){
			pageList = studyGroupService.queryByPageToGetNoDeletePSG(PSGName, orgId, 1, 10);
		}
		else{
			int pagenum;
			try {
				pagenum = Integer.parseInt(toPage);
			} catch (NumberFormatException e) {
				// TODO: handle exception
				pagenum=1;
			}
			pageList = studyGroupService.queryByPageToGetNoDeletePSG(PSGName, orgId, pagenum, 10);
		}
		
		if(pageList.getResult()!=null && pageList.getResult().size()>0){
			List<Studygroup> sgList = pageList.getResult();
			for(int i=0; i<sgList.size(); i++){
				Organization o = organizationService.queryOrganizationById(sgList.get(i).getOrganizationId());
				sgList.get(i).setOrganization(o);
				
				List<StudygroupPerson> studygroupPersons = studyGroupPersonService.queryByStudygroupIdToGetPersons(sgList.get(i).getId());
				sgList.get(i).setPersons(studygroupPersons);
			}
		}
		
		model.addAttribute("pageList", pageList);
		
		return "org/PSG_management_div1";
	}
	
	//重置常设考察组密码
	@RequestMapping("reset_studygroup_password.do")
	@ResponseBody
	public String reset_studygroup_password(String studygroupId) throws UnsupportedEncodingException{
		int id;
		try {
			id = Integer.parseInt(studygroupId);
		} catch (NumberFormatException e) {
			// TODO: handle exception
			return URLEncoder.encode("重置失败", "UTF-8");
		}
		
		Studygroup studygroup = studyGroupService.queryById(id);
		LoginUser loginUser = studygroup.getLoginUser();
		loginUser.setPassword("111111");
		loginUserService.updatePSW(loginUser);
		
		return URLEncoder.encode("重置成功", "UTF-8");
	}
	
	//删除常设考察组
	@RequestMapping("delete_studygroup.do")
	@ResponseBody
	public String delete_studygroup(String studygroupId) throws UnsupportedEncodingException{
		int id;
		try {
			id = Integer.parseInt(studygroupId);
		} catch (NumberFormatException e) {
				// TODO: handle exception
			return URLEncoder.encode("删除失败", "UTF-8");
		}
		
		Studygroup studygroup = studyGroupService.queryById(id);
		//检查常设考察组下是否有正在进行的选任任务
		List<Entryform> elist = entryFormService.queryWhetherOrNotRegisterPerson(studygroup.getOrganizationId());
		List<EmpanelJob> ejList = empanelJobService.queryByOrgIdAndEmpanelValid(studygroup.getOrganizationId());
		
		if(elist.size()>0 || ejList.size()>0){
			return URLEncoder.encode("该考察组正在处理选任任务，不允许删除", "UTF-8");
		}
		
		//假删除，数据遗留在数据库中便于查阅历史。但是登陆的账号被销毁
		LoginUser loginUser = studygroup.getLoginUser();
		
		studygroup.setDelFlag(1);
		studygroup.setLoginUser(null);
		studyGroupService.update(studygroup);
		
		loginUserService.deleteOneItem(loginUser);
		
		return URLEncoder.encode("删除成功", "UTF-8");
	}
	
	//添加常设考察组
	@RequestMapping("add_new_studygroup.do")
	@ResponseBody
	public String add_new_studygroup(String username, String studygroupname, String organization, String leader_name, 
						String liaison_name, String liaison_phone, String liaison_email, String[] member_name) throws UnsupportedEncodingException{
		
		if(!checkStringValid(username) || !checkStringValid(studygroupname) || !checkStringValid(organization) || !checkStringValid(leader_name)
				|| !checkStringValid(liaison_name) || !checkStringValid(liaison_phone) || !checkStringValid(liaison_email)){
			return URLEncoder.encode("数据不完整，添加失败", "UTF-8");
		}
		
		if(member_name.length<1 || !checkStringValid(member_name[0])){
			return URLEncoder.encode("数据不完整，添加失败", "UTF-8");
		}
		
		//添加账号信息
		LoginUser studygroupUser = new LoginUser();
		studygroupUser.setUsername(username);
		studygroupUser.setPassword("111111");
		studygroupUser.setRoleId(3);
		loginUserService.addStudygroup(studygroupUser);
		
		//添加考察组信息
		Studygroup studygroup = new Studygroup();
		studygroup.setLoginUser(studygroupUser);
		Organization org = organizationService.queryOrganizationByName(organization);
		if(org ==null){
			return URLEncoder.encode("系统中没有这个单位，添加失败", "UTF-8");
		}
		studygroup.setOrganizationId(org.getId());
		studygroup.setIsTemp(0);
		studygroup.setName(studygroupname);
		studygroup.setDelFlag(0);
		studyGroupService.addOneItem(studygroup);
		
		//添加常设考察组成员信息
		/**
		 * 注意这里添加的时候不考虑人员库中是否已经有这个人了，只要是添加则新建一条人员记录
		 */
		StudygroupPersonStore leader = new StudygroupPersonStore();
		leader.setName(leader_name);
		leader.setIsTemp(0);
		leader.setIsLiaison(0);
		studyGroupPersonStoreService.addPSGMember(leader);
		
		StudygroupPersonStore liaison = new StudygroupPersonStore();
		liaison.setName(liaison_name);
		liaison.setIsTemp(0);
		liaison.setIsLiaison(1);
		liaison.setEmail(liaison_email);
		liaison.setTel(liaison_phone);
		studyGroupPersonStoreService.addPSGMember(liaison);
		
		List<StudygroupPersonStore> memberList = new ArrayList<StudygroupPersonStore>();
		for(int i=0; i<member_name.length; i++){
			StudygroupPersonStore member = new StudygroupPersonStore();
			member.setName(member_name[i]);
			member.setIsLiaison(0);
			member.setIsTemp(0);
			memberList.add(member);
			studyGroupPersonStoreService.addPSGMember(member);
		}
		
		//外键关联, 组长一个， 联络员一个， n个组员， 一共 n+2条数据
		//组长
		StudygroupPerson leaderFK = new StudygroupPerson();
		leaderFK.setStudygroupPersonStore(leader);
		leaderFK.setStudygroup(studygroup);
		leaderFK.setType("组长");
		studyGroupPersonService.addOneItem(leaderFK);
		//联络员
		StudygroupPerson liaisonFK = new StudygroupPerson();
		liaisonFK.setStudygroupPersonStore(liaison);
		liaisonFK.setStudygroup(studygroup);
		liaisonFK.setType("联络员");
		studyGroupPersonService.addOneItem(liaisonFK);
		//组员
		for(int i=0; i<memberList.size(); i++){
			StudygroupPerson memberFK = new StudygroupPerson();
			memberFK.setStudygroup(studygroup);
			memberFK.setStudygroupPersonStore(memberList.get(i));
			memberFK.setType("组员");
			studyGroupPersonService.addOneItem(memberFK);
		}
		
		return URLEncoder.encode("添加成功", "UTF-8");
	}
	
	//教职工人员管理
	@RequestMapping("staff_management.do")
	public String staff_management(Model model, String toPage, String staffName, String org){
		
		model.addAttribute("username", WebApplication.getCurrUser().getUsername());
		List<Organization> organizations = organizationService.queryAll();
		model.addAttribute("org", organizations);
		
		model.addAttribute("staffName", staffName);
		model.addAttribute("orgName", org);
		
		Page<Entryform> pageList;
		if(!checkStringValid(toPage)){
			pageList = entryFormService.queryByPage(staffName, org, 1, 10);
		}
		else{
			int pagenum;
			try {
				pagenum = Integer.parseInt(toPage);
			} catch (NumberFormatException e) {
				// TODO: handle exception
				pagenum=1;
			}
			pageList = entryFormService.queryByPage(staffName, org, pagenum, 10);
		}
		model.addAttribute("pageList", pageList);
		return "org/staff_management";
	}
	
	//教职工分页查询和搜索
	@RequestMapping("staff_management_page.do")
	public String staff_management_page(Model model, String toPage, String staffName, String org){
		List<Organization> organizations = organizationService.queryAll();
		model.addAttribute("org", organizations);
		
		model.addAttribute("staffName", staffName);
		model.addAttribute("orgName", org);
		
		Page<Entryform> pageList;
		if(!checkStringValid(toPage)){
			pageList = entryFormService.queryByPage(staffName, org, 1, 10);
		}
		else{
			int pagenum;
			try {
				pagenum = Integer.parseInt(toPage);
			} catch (NumberFormatException e) {
				// TODO: handle exception
				pagenum=1;
			}
			pageList = entryFormService.queryByPage(staffName, org, pagenum, 10);
		}
		model.addAttribute("pageList", pageList);
		return "org/staff_management_div1";
	}
	
	//教职工重置密码
	@RequestMapping("staff_management_resetPSW.do")
	@ResponseBody
	public String staff_management_resetPSW(String EntryformId) throws UnsupportedEncodingException{
		int id;
		try {
			id = Integer.parseInt(EntryformId);
		} catch (NumberFormatException e) {
			// TODO: handle exception
			return URLEncoder.encode("重置失败", "UTF-8");
		}
		
		Entryform entryform = entryFormService.queryById(id);
		
		LoginUser loginUser = entryform.getUser().getLoginUser();
		if(loginUser ==null){
			return URLEncoder.encode("重置失败", "UTF-8");
		}
		
		loginUser.setPassword("111111");
		loginUserService.updatePSW(loginUser);
		return URLEncoder.encode("重置成功", "UTF-8");
	}
	
	//查看员工详情
	@RequestMapping("staff_management_detail_info.do")
	public String staff_management_detail_info(Model model, String EntryformId){
		int id;
		try {
			id = Integer.parseInt(EntryformId);
		} catch (NumberFormatException e) {
			// TODO: handle exception
			id=-1;
		}
		
		//个人信息情况
		Entryform entryform = entryFormService.queryById(id);
		model.addAttribute("info", entryform);
		List<EntryformFamily> entryformFamilies = entryFormFamilyService.queryByEntryFormId(id);
		model.addAttribute("family", entryformFamilies);
		
		if(entryform==null){
			return "org/staff_management_div2";
		}
		
		//历史报名
		int uid = entryform.getUser().getId();
		List<Entryform> enList = entryFormService.queryByUserId(uid);
		if(enList!=null && enList.size()>0){
			for(int i=0; i<enList.size(); i++){
				int entryformId = enList.get(i).getId();
				List<EntryformJob> entryformJobs = entryFormJobService.queryByEntryformId(entryformId);
				enList.get(i).setJobList(entryformJobs);
			}
		
			model.addAttribute("history", enList);
		}
		return "org/staff_management_div2";
	}
	
	public boolean checkStringValid(String str){
		if(str==null || str.equals("")){
			return false;
		}else{
			return true;
		}
	}
}
