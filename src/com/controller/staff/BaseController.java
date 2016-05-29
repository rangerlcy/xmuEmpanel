package com.controller.staff;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.common.WebApplication;
import com.pojo.Degree;
import com.pojo.Education;
import com.pojo.Empanel;
import com.pojo.EmpanelJob;
import com.pojo.Entryform;
import com.pojo.EntryformFamily;
import com.pojo.EntryformJob;
import com.pojo.Ethnic;
import com.pojo.LoginUser;
import com.pojo.Organization;
import com.pojo.PartyName;
import com.pojo.PlaceCity;
import com.pojo.PlaceProvince;
import com.pojo.PlaceTown;
import com.pojo.SignInFamily;
import com.pojo.SignInForm;
import com.pojo.StaffEmpanelState;
import com.pojo.User;
import com.security.pojo.LoginUserDetails;
import com.service.DegreeService;
import com.service.EducationService;
import com.service.EmpanelJobService;
import com.service.EmpanelService;
import com.service.EntryFormFamilyService;
import com.service.EntryFormJobService;
import com.service.EntryFormService;
import com.service.EthnicService;
import com.service.OrganizationService;
import com.service.PartyNameService;
import com.service.PlaceService;
import com.service.UserService;

import sun.misc.BASE64Encoder;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

//教职工url拦截
@Controller
@RequestMapping("/staff")
public class BaseController {
	@Autowired
	DegreeService degreeService;
	@Autowired
	PlaceService placeService;
	@Autowired
	UserService userService;
	@Autowired
	EntryFormService entryformService;
	@Autowired
	EthnicService ethnicService;
	@Autowired
	EducationService educationService;
	@Autowired
	OrganizationService organizationService;
	@Autowired
	EntryFormFamilyService entryFormFamilyService;
	@Autowired
	PartyNameService partyNameService;
	@Autowired
	EmpanelService empanelService;
	@Autowired
	EmpanelJobService empanelJobService;
	@Autowired
	EntryFormJobService entryFormJobService;

	@RequestMapping("/staff_index.do")
	public String staff_index(Model model) {

		Entryform data = entryformService.queryByUsername(WebApplication.getCurrUser().getUsername());
		model.addAttribute("photo", data.getPicUrl());

		model.addAttribute("username", WebApplication.getCurrUser().getUsername());
		User user = userService.userFindByUsername(WebApplication.getCurrUser().getUsername());
		model.addAttribute("identify", user.getIdentifyNum());
		model.addAttribute("email", user.getEmail());
		
		return "staff/staff_index";
	}

	@RequestMapping("/staff_info.do")
	public String staff_info(HttpServletRequest request, HttpServletResponse response, Model model) {

		List<Degree> degree = degreeService.queryAll();
		model.addAttribute("degree", degree);

		List<PlaceProvince> province = placeService.queryAllProvince();
		model.addAttribute("province", province);

		List<Ethnic> ethnics = ethnicService.queryAll();
		model.addAttribute("ethnic", ethnics);

		List<Education> educations = educationService.queryAll();
		model.addAttribute("education", educations);

		List<Organization> organizations = organizationService.queryAll();
		model.addAttribute("organization", organizations);

		List<PartyName> partyNames = partyNameService.queryAll();
		model.addAttribute("party", partyNames);

		model.addAttribute("username", WebApplication.getCurrUser().getUsername());
		User user = userService.userFindByUsername(WebApplication.getCurrUser().getUsername());
		model.addAttribute("identify", user.getIdentifyNum());
		model.addAttribute("email", user.getEmail());

		Entryform data = entryformService.queryByUsername(WebApplication.getCurrUser().getUsername());
		if (data == null) {
			return "staff/staff_info";
		}

		List<EntryformFamily> family_data = entryFormFamilyService.queryByEntryFormId(data.getId());
		// 构造与前端数据匹配的类
		SignInForm info = Entryform2SignInForm(data);
		List<SignInFamily> family_list = EntryformFamily2SignInFamilyList(family_data);
		model.addAttribute("info", info);
		model.addAttribute("family", family_list);

		return "staff/staff_info";
	}

	@RequestMapping("/staff_register.do")
	public String staff_register(Model model) {
		
		List<StaffEmpanelState> staffEmpanelStates = new ArrayList<StaffEmpanelState>();
		
		List<Empanel> empanels = empanelService.queryAllValid();
		for(Empanel empanel: empanels){
			int empanelId = empanel.getId();
			String state = entryformService.queryByUsernameAndEmpanelIdToGetState(empanelId, WebApplication.getCurrUser().getUsername());
			
			StaffEmpanelState staffEmpanelState = new StaffEmpanelState();
			staffEmpanelState.setEmpanel(empanel);
			staffEmpanelState.setState(state);
			staffEmpanelStates.add(staffEmpanelState);
		}
		model.addAttribute("staffEmpanelState", staffEmpanelStates);
		
		Entryform data = entryformService.queryByUsername(WebApplication.getCurrUser().getUsername());
		model.addAttribute("photo", data.getPicUrl());

		model.addAttribute("username", WebApplication.getCurrUser().getUsername());
		User user = userService.userFindByUsername(WebApplication.getCurrUser().getUsername());
		model.addAttribute("identify", user.getIdentifyNum());
		model.addAttribute("email", user.getEmail());

		return "staff/staff_register";
	}

	// 打开选任详情
	@RequestMapping("/open_register_detail.do")
	@ResponseBody
	public JSONObject openRegisterDetail(int openId) {
		Empanel empanel = empanelService.queryById(openId);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("title", empanel.getName());
		map.put("plan", empanel.getPlan());
		JSONObject jsonObject = JSONObject.fromObject(map);
		return jsonObject;
	}

	// 打开报名
	@RequestMapping("/open_register.do")
	@ResponseBody
	public void openRegister(int openId, HttpServletResponse response) throws IOException {
		Empanel empanel = empanelService.queryById(openId);
		
		//查询出某次选拔任务下的所有工作岗位
		List<EmpanelJob> empaneljobList = empanelJobService.queryByEmpanelId(openId);
		
		int EntryfromId = entryformService.queryIsBindEmpanelId(WebApplication.getCurrUser().getUsername(), openId);		//判断报名表是否绑定到选任工作上, 返回报名表id
		
		// 构造List<Map>容器，如果直接用List<EmpanelJob> 转JSON报hibernate lazy初始化异常错误
		List<HashMap<String, String>> maplist = new ArrayList<HashMap<String, String>>();

		HashMap<String, String> mmap = new HashMap<String, String>();
		mmap.put("title", empanel.getName());
		mmap.put("totalNum", empaneljobList.size() + "");
		maplist.add(mmap);
		for (EmpanelJob ej : empaneljobList) {
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("jobId", ej.getId() + "");
			map.put("organization", empanelJobService.queryOrganizationByEmpanelJobId(ej.getId()).getName());
			map.put("job", ej.getJob());
			map.put("level", ej.getLevel());
			map.put("num", ej.getAmount() + "");
			
			if(EntryfromId != -1){
				//根据报名表id + 工作岗位id， 查询出志愿顺序
				EntryformJob efj = entryFormJobService.queryByEntryformIdAndEmpanelJobId(EntryfromId, ej.getId());
				if(efj == null){
					map.put("seq", "-100");
				}else{
					map.put("seq", efj.getJobNum()+"");
				}
			}
			else{
				map.put("seq", "-100");
			}
			maplist.add(map);
		}

		
		HashMap<String, String> map1 = new HashMap<String, String>();
		if (EntryfromId != -1) { // 已经有报名表绑定了这个选任工作
			map1.put("isBind", "1");
		} else {
			map1.put("isBind", "0");
		}
		maplist.add(map1);

		JSONArray jsonArray = JSONArray.fromObject(maplist);
		// set the response content-type
		response.setContentType("application/json");

		PrintWriter out = response.getWriter();

		// writing the json-array to the output stream
		out.print(jsonArray);
		out.flush();
	}

	// 选择了省级，更新市级
	@RequestMapping("/update_city.do")
	@ResponseBody
	public String update_city(HttpServletRequest request, HttpServletResponse response, Model model) throws UnsupportedEncodingException {

		String html = "";
		String provinceName = request.getParameter("province");
		if (!provinceName.isEmpty()) {
			int provinceId = placeService.queryProvinceIdByName(provinceName);
			List<PlaceCity> city = placeService.queryCityByProvinceId(provinceId);
			for (PlaceCity pc : city) {
				html += "<option value=" + pc.getCity() + ">" + pc.getCity() + "</option>";
			}
		}
		return URLEncoder.encode(html, "UTF-8");
	}

	// 选择了市级，更新县级
	@RequestMapping("/update_town.do")
	@ResponseBody
	public String update_town(HttpServletRequest request, HttpServletResponse response, Model model) throws UnsupportedEncodingException {

		String html = "";
		String cityName = request.getParameter("city");
		if (!cityName.isEmpty()) {
			int cityId = placeService.queryCityIdByName(cityName);
			List<PlaceTown> town = placeService.queryTownByCityId(cityId);
			for (PlaceTown pc : town) {
				html += "<option value=" + pc.getTown() + ">" + pc.getTown() + "</option>";
			}
		}
		return URLEncoder.encode(html, "UTF-8");
	}

	// 报名人员个人信息---照片数据
	@RequestMapping("/staff_photo_data.do")
	@ResponseBody
	public String getStaffPhotoInfo(Model model, HttpServletRequest request, @RequestParam("photo_file") MultipartFile multipartFile) throws IOException {
		Entryform entryform = entryformService.queryByUsername(WebApplication.getCurrUser().getUsername());

		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS"); // 精确到毫秒的时间来命名
		String timeString = df.format(new Date());
		timeString = timeString.replaceAll(":", "-");
		String picName = "/photo-" + timeString + ".jpg"; // 全部转成jpg格式
		String filepath = WebApplication.getRealStaffUploadPhoto() + picName; // 这个是得到绝对路径
		String relativePath = WebApplication.getRelativeStaffUploadPhoto() + picName;
		
		// 前端发过来的文件转输入流，然后read进输出流，最后生成文件
		if (multipartFile != null) {
			InputStream in = multipartFile.getInputStream();
			File outFile = new File(filepath);
			FileOutputStream out = new FileOutputStream(outFile);
			byte[] b = new byte[1024];
			while ((in.read(b)) != -1) {
				out.write(b);
			}
			in.close();
			out.close();

			entryform.setPicUrl(relativePath);
			entryformService.update(entryform);
			
			return "success";
		}
		return "";
	}

	// 报名人员个人信息----表单文字数据
	@RequestMapping("/staff_form_data.do")
	@ResponseBody
	public String getStaffFormInfo(Model model, HttpServletRequest request, SignInForm allData) throws ParseException, UnsupportedEncodingException {

		String result = checkSignInFormDataValid(allData);
		if (result.equals("success")) {
			Entryform ef = signInForm2Entryform(allData);
			if (ef == null) {
				return URLEncoder.encode("某种错误导致保存失败，错误代码0001", "UTF-8");
			}
			return URLEncoder.encode("保存数据成功", "UTF-8");
		} else {
			return result;
		}
	}

	// 将最新的报名表复制一份与选任工作绑定，该报名表将不可修改
	@RequestMapping("/fix_register_table.do")
	@ResponseBody
	public String fixRegisterTable(Model model, String info, Integer empanelId) {
		if (info.equals("fix") && empanelId != null) {
			Entryform ef = entryformService.queryByUsername(WebApplication.getCurrUser().getUsername());

			ef.setEmpanel(empanelService.queryById(empanelId));
			entryformService.saveLastTableToFix(ef);
		}
		return "success";
	}

	// 下载报名表
	@RequestMapping("/download_word.do")
	@ResponseBody
	public String download(Model model, HttpServletRequest request, Integer empanelId) throws Exception {
		String download_info = request.getParameter("download");
		// 下载绑定选任工作的报名表
		if (download_info.equals("fix_or_last") && empanelId != null) {
			Entryform ef = entryformService.queryByUsernameAndEmpanelId(WebApplication.getCurrUser().getUsername(), empanelId);
			String pathString = downloadWordAndWriteWord(ef);
			return pathString;
		}
		// 下载最新的报名表
		if (download_info.equals("last")) {
			Entryform ef = entryformService.queryByUsername(WebApplication.getCurrUser().getUsername());
			String pathString = downloadWordAndWriteWord(ef);
			return pathString;
		}
		return "fail";
	}
	
	
	//确认提交报名
	@RequestMapping("/submit_register")
	@ResponseBody
	public String submit_register(Model model, HttpServletRequest request, Integer empanelId){
		
		if(empanelId ==null){		//没有绑定报名表
			return "NoBindEntryFrom";
		}
		
		//System.out.println(request.getParameter("info"));
		String str = request.getParameter("info");
		JSONArray jsonObject = JSONArray.fromObject(str);
		
		//检查是否有志愿排序重复
		int[] a = new int[1000];		//自动初始化为0
		for(int i=0;i<jsonObject.size(); i++){
			int jobSeq = Integer.parseInt( jsonObject.getJSONObject(i).getString("jobSeq") );
			
			if(jobSeq == -1){
				continue;
			}
			
			if(a[jobSeq] == 1){
				return "duplicate";
			}
			
			a[jobSeq] = 1;
		}
		
		Entryform ef = entryformService.queryByUsernameAndEmpanelId(WebApplication.getCurrUser().getUsername(), empanelId);
		for(int i=0;i<jsonObject.size(); i++){
			int jobId = Integer.parseInt( jsonObject.getJSONObject(i).getString("jobId") );
			int jobSeq = Integer.parseInt( jsonObject.getJSONObject(i).getString("jobSeq") );
			EmpanelJob ej = empanelJobService.queryById(jobId);			//可以报名的选任岗位
			
			EntryformJob efj = new EntryformJob();
			efj.setEmpanelJob(ej);
			efj.setJobNum(jobSeq);
			efj.setEntryform(ef);
			efj.setIsSelected(0);
			entryFormJobService.addOneItem(efj);
		}
		
		return "success";
	}

	// 对图片进行base64编码,之后可以写进word转成的xml
	public String getImageBase64Str(String picUrl) {
		String pathString = WebApplication.getContextPath();
		pathString = pathString.substring(0, pathString.length() - 8);

		String imgFile = pathString + picUrl;
		InputStream in = null;
		byte[] data = null;
		try {
			in = new FileInputStream(imgFile);
			data = new byte[in.available()];
			in.read(data);
			in.close();
			BASE64Encoder encoder = new BASE64Encoder();
			return encoder.encode(data);
		} catch (Exception e) {
			e.printStackTrace();
			return "";
		}
	}

	// 前端表单数据有效性检测
	private String checkSignInFormDataValid(SignInForm form) throws UnsupportedEncodingException {
		// TODO Auto-generated method stub
		//URLEncoder.encode(html, "UTF-8");
		//String error_info= "";
		
		if(form.getName().isEmpty()){
			return URLEncoder.encode("姓名未填写", "UTF-8");
		}
		
		if(form.getGender().isEmpty()){
			return URLEncoder.encode("性别未填写", "UTF-8");
		}
		
		if(form.getBorn_year().isEmpty() || form.getBorn_month().isEmpty()){
			return URLEncoder.encode("出生日期未填写", "UTF-8");
		}
		
		if (form.getNation().isEmpty()) {
			return URLEncoder.encode("民族未填写", "UTF-8");
		}
		
		if(form.getBorn_place_city1().isEmpty() || form.getBorn_place_city2().isEmpty()){
			return URLEncoder.encode("出生地未填写", "UTF-8");
		}
		
		if(form.getOrigin_place_city1().isEmpty() || form.getOrigin_place_city2().isEmpty()){
			return URLEncoder.encode("籍贯未填写", "UTF-8");
		}
		
		if(form.getParty_name().isEmpty()){
			return URLEncoder.encode("政治面目未填写", "UTF-8");
		}
		if (!form.getParty_name().equals("群众")) {
			if (form.getParty_month().isEmpty() || form.getParty_year().isEmpty()) {
				return URLEncoder.encode("请填写入党时间", "UTF-8");
			}
		}
		
		if(form.getWork_year().isEmpty() || form.getWork_month().isEmpty()){
			return URLEncoder.encode("参加工作时间未填写", "UTF-8");
		}
		
		if(form.getSchool_year().isEmpty() || form.getSchool_month().isEmpty()){
			return URLEncoder.encode("来校时间未填写", "UTF-8");
		}
		
		if(form.getEducation1().isEmpty() || form.getDegree1().isEmpty() || form.getSchool1().isEmpty()){
			return URLEncoder.encode("全日制教育未填写", "UTF-8");
		}
		
		if(form.getPhone().isEmpty()){
			return URLEncoder.encode("联系电话未填写", "UTF-8");
		}
		
		if(form.getEmail().isEmpty()){
			return URLEncoder.encode("邮箱未填写", "UTF-8");
		}
		
		if(form.getOrganization().isEmpty()){
			return URLEncoder.encode("现任职务所在单位未填写", "UTF-8");
		}
		
		if(form.getJob().isEmpty()){
			return URLEncoder.encode("现任职务未填写", "UTF-8");
		}
		
		if(form.getCv().isEmpty()){
			return URLEncoder.encode("简历未填写", "UTF-8");
		}
		
		for (int i = 0; i < form.getFamily_name().length; i++) {
			if (i == 0) {
				continue;
			}
			
			if(form.getFamily_alias()[i].isEmpty()){
				return URLEncoder.encode("家庭成员称谓未填写", "UTF-8");
			}
			
			if(form.getFamily_name()[i].isEmpty()){
				return URLEncoder.encode("家庭成员姓名未填写", "UTF-8");
			}
			
			if (form.getFamily_born_year()[i].isEmpty() || form.getFamily_born_month()[i].isEmpty()) {
				return URLEncoder.encode("家庭成员出生日期未填写", "UTF-8");
			}
			
			if(form.getPolitical()[i].isEmpty()){
				return URLEncoder.encode("家庭成员政治面目未填写", "UTF-8");
			}
			
			if(form.getWork_organization()[i].isEmpty()){
				return URLEncoder.encode("家庭成员工作单位未填写", "UTF-8");
			}
		}
		return "success";
	}

	// 前端表单SignInForm转数据库Entryform,和Entryform_family
	public Entryform signInForm2Entryform(SignInForm form) {
		LoginUserDetails login = WebApplication.getCurrUser();
		Entryform entryform = entryformService.queryByUsername(login.getUsername()); // 一旦登陆进来的用户在EntryForm表中必定至少有一条数据,所以这个entryform不可能为空
		if (entryform == null) {
			return null;
		}
		// SimpleDateFormat sdf = new SimpleDateFormat( "yyyy-MM-dd" );

		entryform.setName(form.getName());
		entryform.setSex(form.getGender());
		entryform.setPartyName(form.getParty_name());

		entryform.setBirth(form.getBorn_year() + "." + form.getBorn_month());
		entryform.setNationality(form.getNation());
		entryform.setBirthPlace(form.getBorn_place_city1() + "-" + form.getBorn_place_city2() + "-" + form.getBorn_place_city3());
		entryform.setNativePlace(form.getOrigin_place_city1() + "-" + form.getOrigin_place_city2() + "-" + form.getOrigin_place_city3());
		entryform.setJoinPartyTime(form.getParty_year() + "." + form.getParty_month() );
		entryform.setWorkTime(form.getWork_year() + "." + form.getWork_month() );
		entryform.setCollegeTime(form.getSchool_year() + "." + form.getSchool_month() );
		entryform.setSpecialJob(form.getSkill()); // 专业技术职务
		entryform.setSpecialSkill(form.getTalent()); // 特长
		// 全日制教育
		entryform.setFullTimeEducationRecord(form.getEducation1());
		entryform.setFullTimeEducationLevel(form.getDegree1());
		entryform.setFullTimeEducationCollege(form.getSchool1());
		// 在职教育
		entryform.setIncumbencyEducationRecord(form.getEducation2());
		entryform.setIncumbencyEducationLevel(form.getDegree2());
		entryform.setIncumbencyEducationCollege(form.getSchool2());

		entryform.setTel(form.getPhone());
		entryform.setEmail(form.getEmail());

		entryform.setOrganization(organizationService.queryOrganizationByName(form.getOrganization()));
		entryform.setPresentlyJob(form.getJob());
		entryform.setResume(form.getCv());
		entryform.setPunishReward(form.getReward_and_punishment());
		entryform.setAppraisalResult(form.getCheck_result());

		// 把entryform存入数据库
		entryformService.saveOrUpdate(entryform);

		// 处理家庭成员数据，存入数据库
		List<EntryformFamily> family_list = entryFormFamilyService.queryByEntryFormId(entryform.getId());
		int length = form.getFamily_name().length;
		if (family_list.size() == 0) {
			for (int i = 0; i < length; i++) {
				if (i == 0) {
					continue;
				}
				EntryformFamily family = new EntryformFamily();
				family.setName(form.getFamily_name()[i]);
				family.setAppellation(form.getFamily_alias()[i]);
				family.setPolitics(form.getPolitical()[i]);
				family.setJob(form.getWork_organization()[i]);
				family.setEntryform(entryform);
				family.setBirth(form.getFamily_born_year()[i] + "." + form.getFamily_born_month()[i] );
				entryFormFamilyService.addOneItem(family);
			}
		} else {
			entryFormFamilyService.deleteByList(family_list);
			for (int i = 0; i < length; i++) {
				if (i == 0) {
					continue;
				}
				EntryformFamily family = new EntryformFamily();
				family.setName(form.getFamily_name()[i]);
				family.setAppellation(form.getFamily_alias()[i]);
				family.setPolitics(form.getPolitical()[i]);
				family.setJob(form.getWork_organization()[i]);
				family.setEntryform(entryform);
				family.setBirth(form.getFamily_born_year()[i] + "." + form.getFamily_born_month()[i] );
				entryFormFamilyService.addOneItem(family);
			}
		}

		return entryform;
	}

	// 数据库entryForm, entryFormFamily转前端表单SignInForm
	public SignInForm Entryform2SignInForm(Entryform entryform) {

		SignInForm info = new SignInForm();

		info.setName(entryform.getName());
		info.setGender(entryform.getSex());
		info.setNation(entryform.getNationality());
		info.setPhoto(entryform.getPicUrl());
		info.setParty_name(entryform.getPartyName());
		if (entryform.getBirth() != null) {
			String timeString = entryform.getBirth();
			String[] timeStr = timeString.split("\\.");
			if (timeStr.length > 0) {
				info.setBorn_year(timeStr[0]);
			}
			if (timeStr.length > 1) {
				info.setBorn_month(timeStr[1]);
			}
			if (timeStr.length > 2) {
				info.setBorn_day(timeStr[2]);
			}

		}

		// 籍贯
		if (entryform.getNativePlace() != null) {
			String[] placeStrings = entryform.getNativePlace().split("-");
			if (placeStrings.length > 0) {
				info.setOrigin_place_city1(placeStrings[0]);
			}
			if (placeStrings.length > 1) {
				info.setOrigin_place_city2(placeStrings[1]);
			}
			if (placeStrings.length > 2) {
				info.setOrigin_place_city3(placeStrings[2]);
			}
		}
		// 出生地
		if (entryform.getBirthPlace() != null) {
			String[] placeStrings = entryform.getBirthPlace().split("-");
			if (placeStrings.length > 0) {
				info.setBorn_place_city1(placeStrings[0]);
			}
			if (placeStrings.length > 1) {
				info.setBorn_place_city2(placeStrings[1]);
			}
			if (placeStrings.length > 2) {
				info.setBorn_place_city3(placeStrings[2]);
			}
		}
		// 入党时间
		if (entryform.getJoinPartyTime() != null) {
			String timeString = entryform.getJoinPartyTime();
			String[] timeStr = timeString.split("\\.");
			if (timeStr.length > 0) {
				info.setParty_year(timeStr[0]);
			}
			if (timeStr.length > 1) {
				info.setParty_month(timeStr[1]);
			}
			if (timeStr.length > 2) {
				info.setParty_day(timeStr[2]);
			}

		}

		if (entryform.getWorkTime() != null) {
			String timeString = entryform.getWorkTime();
			String[] timeStr = timeString.split("\\.");
			if (timeStr.length > 0) {
				info.setWork_year(timeStr[0]);
			}
			if (timeStr.length > 1) {
				info.setWork_month(timeStr[1]);
			}
			if (timeStr.length > 2) {
				info.setWork_day(timeStr[2]);
			}

		}

		if (entryform.getCollegeTime() != null) {
			String timeString = entryform.getCollegeTime();
			String[] timeStr = timeString.split("\\.");
			if (timeStr.length > 0) {
				info.setSchool_year(timeStr[0]);
			}
			if (timeStr.length > 1) {
				info.setSchool_month(timeStr[1]);
			}
			if (timeStr.length > 2) {
				info.setSchool_day(timeStr[2]);
			}

		}

		info.setSkill(entryform.getSpecialJob());
		info.setTalent(entryform.getSpecialSkill());
		info.setEducation1(entryform.getFullTimeEducationRecord());
		info.setDegree1(entryform.getFullTimeEducationLevel());
		info.setSchool1(entryform.getFullTimeEducationCollege());
		info.setEducation2(entryform.getIncumbencyEducationRecord());
		info.setDegree2(entryform.getIncumbencyEducationLevel());
		info.setSchool2(entryform.getIncumbencyEducationCollege());
		info.setPhone(entryform.getTel());
		info.setEmail(entryform.getEmail());
		if (entryform.getOrganization() != null) {
			info.setOrganization(entryform.getOrganization().getName());
		} else {
			info.setOrganization(null);
		}
		info.setJob(entryform.getPresentlyJob());
		info.setCv(entryform.getResume());
		info.setReward_and_punishment(entryform.getPunishReward());
		info.setCheck_result(entryform.getAppraisalResult());

		return info;
	}

	public List<SignInFamily> EntryformFamily2SignInFamilyList(List<EntryformFamily> data) {
		if (data.size() == 0) {
			return null;
		}
		List<SignInFamily> list = new ArrayList<SignInFamily>();

		for (int i = 0; i < data.size(); i++) {
			SignInFamily family = new SignInFamily();
			family.setFamily_alias(data.get(i).getAppellation());
			family.setFamily_name(data.get(i).getName());
			if (data.get(i).getBirth() != null) {
				String timeString = data.get(i).getBirth();
				String[] timeStr = timeString.split("\\.");
				if (timeStr.length > 0) {
					family.setFamily_born_year(timeStr[0]);
				}
				if (timeStr.length > 1) {
					family.setFamily_born_month(timeStr[1]);
				}
				if (timeStr.length > 2) {
					family.setFamily_born_day(timeStr[2]);
				}
			}
			family.setPolitical(data.get(i).getPolitics());
			family.setWork_organization(data.get(i).getJob());

			list.add(family);
		}
		return list;
	}

	// 根据Entryform 下载报名表，对word模板进行写操作,返回下载路径
	public String downloadWordAndWriteWord(Entryform ef) throws Exception {
		
		
		String pathString = WebApplication.getContextPath();
		
		pathString += "/resource/StaffRes/word"; // 模板文件所在目录

		List<EntryformFamily> eff_list = entryFormFamilyService.queryByEntryFormId(ef.getId());
		
		// 要填充的数据, 注意map的key要和word中${xxx}的xxx一致
		Map<String, String> dataMap = new HashMap<String, String>();
		System.out.println("3333333");
		dataMap.put("姓名", ef.getName());
		System.out.println("444444");
		dataMap.put("性别", ef.getSex());
		dataMap.put("照片", getImageBase64Str(ef.getPicUrl()));
		System.out.println("555555");
		if (!ef.getBirth().isEmpty()) {
			dataMap.put("年月", ef.getBirth());
		}
		dataMap.put("民族", ef.getNationality());
		dataMap.put("籍贯", ef.getNativePlace().replaceAll("-", ""));
		dataMap.put("出生地", ef.getBirthPlace().replaceAll("-", ""));
		if(ef.getPartyName().equals("群众")){
			dataMap.put("入党时间", "群众");
		}
		else{
			
			if (ef.getPartyName().equals("中共")) {
				dataMap.put("入党时间", ef.getJoinPartyTime());
			} else {
				dataMap.put("入党时间", ef.getPartyName() + "<w:br />" + ef.getJoinPartyTime());
			}

		}
		if (!ef.getWorkTime().isEmpty()) {
			dataMap.put("参加工作", ef.getWorkTime());
		}
		if (!ef.getCollegeTime().isEmpty()) {
			dataMap.put("来校", ef.getCollegeTime());
		}
		dataMap.put("专业技术", ef.getSpecialJob());
		dataMap.put("特长", ef.getSpecialSkill());
		dataMap.put("全历", ef.getFullTimeEducationRecord());
		dataMap.put("全位", ef.getFullTimeEducationLevel());
		dataMap.put("学校", ef.getFullTimeEducationCollege());
		dataMap.put("在职学历", ef.getIncumbencyEducationRecord());
		dataMap.put("在职学位", ef.getIncumbencyEducationLevel());
		dataMap.put("在职学校", ef.getIncumbencyEducationCollege());
		dataMap.put("电话", ef.getTel() + "," + ef.getEmail());
		dataMap.put("现任职务", ef.getOrganization().getName()+ef.getPresentlyJob());
		String cvString = ef.getResume().replaceAll("\n", "<w:br />"); // 转换成word里的换行
		dataMap.put("简历", cvString);
		dataMap.put("奖惩情况", ef.getPunishReward());
		int i = 0;
		for (EntryformFamily eff : eff_list) {
			i++;
			if (i <= 7) {
				dataMap.put("别名" + i, eff.getAppellation());
				dataMap.put("名字" + i, eff.getName());
				if (!eff.getBirth().isEmpty()) {
					dataMap.put("出生" + i, eff.getBirth());
				}
				dataMap.put("政治" + i, eff.getPolitics());
				dataMap.put("工作" + i, eff.getJob());
			} else {
				break;
			}
		}
		if (i < 7) {
			i++;
			while (i <= 7) {
				dataMap.put("别名" + i, "");
				dataMap.put("名字" + i, "");
				dataMap.put("出生" + i, "");
				dataMap.put("政治" + i, "");
				dataMap.put("工作" + i, "");
				i++;
			}
		}
		// Configuration用于读取ftl文件
		Configuration configuration = new Configuration();
		configuration.setDefaultEncoding("utf-8");
		
		/*
		 * 以下是两种指定ftl文件所在目录路径的方式, 注意这两种方式都是 指定ftl文件所在目录的路径,而不是ftl文件的路径
		 */
		// 指定路径的第一种方式(根据某个类的相对路径指定)
		// configuration.setClassForTemplateLoading(this.getClass(),"");

		// 指定路径的第二种方式,指明.ftl模板文件所在文件夹
		File file = new File(pathString);
		
		configuration.setDirectoryForTemplateLoading(file);			//ubuntu服务器不支持freemaker????
		
		// 输出文档路径及名称
		File outFile = new File(pathString + "/" + WebApplication.getCurrUser().getUsername() + "LastRegister.doc");
		// 以utf-8的编码读取ftl文件
		Template t = configuration.getTemplate("register_table_templet.ftl", "utf-8");
		
		Writer out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(outFile), "utf-8"), 10240);
		t.process(dataMap, out);
		out.close();
		
		return "/empanel/resource/StaffRes/word/" + WebApplication.getCurrUser().getUsername() + "LastRegister.doc";
	}
}
