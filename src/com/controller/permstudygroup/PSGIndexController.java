package com.controller.permstudygroup;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jxl.Workbook;
import jxl.format.VerticalAlignment;
import jxl.read.biff.BiffException;
import jxl.write.Label;
import jxl.write.WritableCellFormat;
import jxl.write.WritableFont;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.common.WebApplication;
import com.pojo.Entryform;
import com.pojo.EntryformJob;
import com.pojo.LoginUser;
import com.pojo.Organization;
import com.pojo.Studygroup;
import com.pojo.UnitRegisterPerson;
import com.service.EntryFormJobService;
import com.service.EntryFormService;
import com.service.LoginUserService;
import com.service.OrganizationService;
import com.service.StudyGroupService;


@Controller
@RequestMapping("/PSG")
public class PSGIndexController {
	
	@Autowired
	StudyGroupService studyGroupService;
	@Autowired
	OrganizationService organizationService;
	@Autowired
	EntryFormService entryFormService;
	@Autowired
	EntryFormJobService entryFormJobService;
	@Autowired
	LoginUserService loginUserService;
	
	
	@RequestMapping("PSG_index.do")
	public String PSG_index(Model model,int type, int empanelId){
		HttpSession session = WebApplication.getSession();
		session.setAttribute("type", type);
		session.setAttribute("empanelId", empanelId);
		model.addAttribute("type", type);
		model.addAttribute("empanelId",empanelId);
		model.addAttribute("username", WebApplication.getCurrUser().getUsername());
		
		Studygroup sg = studyGroupService.queryByUsername(WebApplication.getCurrUser().getUsername());
		if(sg!=null){
			model.addAttribute("name", sg.getName());
		
			Organization org = organizationService.queryOrganizationById(sg.getOrganizationId());
			model.addAttribute("org", org.getName());
		}
		return "permstudygroup/PSG_index";
	}
	
	//本单位报名人员
	@RequestMapping("unit_register_person.do")
	public String unit_register_person(Model model){
		HttpSession session = WebApplication.getSession();
		model.addAttribute("type", session.getAttribute("type"));
		model.addAttribute("empanelId",session.getAttribute("empanelId"));
		
		model.addAttribute("username", WebApplication.getCurrUser().getUsername());
		
		Studygroup sg = studyGroupService.queryByUsername(WebApplication.getCurrUser().getUsername());
		if(sg!=null){
			model.addAttribute("name", sg.getName());
			
		}
		
		return "permstudygroup/unit_person";
	}
	
	//本单位报名人员表格下载
	@RequestMapping("unit_register_person_download.do")
	public void unit_register_person_download(HttpServletResponse response, HttpServletRequest request) throws BiffException, WriteException, IOException{
		
		//excel数据的填充
		String filePath = GenerateRegisterExcel();
		
		//修改报文格式，触发下载
		response.setContentType("video/mpeg4; charset=utf-8");
		response.setHeader("Content-Disposition",
				"attachment;filename=\"register.xls\"");
		File file = new File(filePath);
		int len = 0;
		byte[] buf = new byte[1024];    
		BufferedInputStream bis = new BufferedInputStream(new FileInputStream(file));  
		BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());    
		while (-1 != (len = bis.read(buf, 0, buf.length))) {   
            bos.write(buf, 0, len);   
        }
		bis.close();
		bos.close();
		
		if (file.exists()){
			file.delete();
		}
	}

	//会议推荐
	@RequestMapping("meeting_recommend.do")
	public String meeting_recommend(Model model){
		
		HttpSession session = WebApplication.getSession();
		model.addAttribute("type", session.getAttribute("type"));
		model.addAttribute("empanelId",session.getAttribute("empanelId"));
		
		model.addAttribute("username", WebApplication.getCurrUser().getUsername());
		
		Studygroup sg = studyGroupService.queryByUsername(WebApplication.getCurrUser().getUsername());
		if(sg!=null){
			model.addAttribute("name", sg.getName());
		}
		return "permstudygroup/meeting_recommend";
	}
	
	//会议推荐表格下载
	@RequestMapping("meeting_recommend_download.do")
	public void meeting_recommend_download(HttpServletResponse response) throws BiffException, WriteException, IOException{
		
		Studygroup sg = studyGroupService.queryByUsername(WebApplication.getCurrUser().getUsername());
		Organization org = organizationService.queryOrganizationById(sg.getOrganizationId());
		String org_name = org.getName();
		
		//excel数据的填充
		String filePath = GenerateMeetingRecommendExcel(org_name);
				
		//修改报文格式，触发下载
		response.setContentType("video/mpeg4; charset=utf-8");
		response.setHeader("Content-Disposition",
						"attachment;filename=\"MeetingRecommed.xls\"");
		File file = new File(filePath);
		int len = 0;
		byte[] buf = new byte[1024];    
		BufferedInputStream bis = new BufferedInputStream(new FileInputStream(file));  
		BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());    
		while (-1 != (len = bis.read(buf, 0, buf.length))) {   
			bos.write(buf, 0, len);   
		}
		bis.close();
		bos.close();
				
		if (file.exists()){
			file.delete();
		}		
		
	}
	
	//打开谈话推荐
	@RequestMapping("talk_recommend.do")
	public String talk_recommend(Model model){
		
		HttpSession session = WebApplication.getSession();
		model.addAttribute("type", session.getAttribute("type"));
		model.addAttribute("empanelId",session.getAttribute("empanelId"));
		
		model.addAttribute("username", WebApplication.getCurrUser().getUsername());
		
		Studygroup sg = studyGroupService.queryByUsername(WebApplication.getCurrUser().getUsername());
		if(sg!=null){
			model.addAttribute("name", sg.getName());
			
		}
		
		return "permstudygroup/talk_recommend";
	}
	
	//谈话推荐表格下载
	@RequestMapping("talk_recommend_download.do")
	public void talk_recommend_download(HttpServletResponse response) throws BiffException, WriteException, IOException{
		
		Studygroup sg = studyGroupService.queryByUsername(WebApplication.getCurrUser().getUsername());
		Organization org = organizationService.queryOrganizationById(sg.getOrganizationId());
		String org_name = org.getName();
		
		//excel数据的填充
		String filePath = GenerateTalkRecommendExcel(org_name);
				
		//修改报文格式，触发下载
		response.setContentType("video/mpeg4; charset=utf-8");
		response.setHeader("Content-Disposition", "attachment;filename=\"TalkRecommend.xls\"");
		File file = new File(filePath);
		int len = 0;
		byte[] buf = new byte[1024];    
		BufferedInputStream bis = new BufferedInputStream(new FileInputStream(file));  
		BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());    
		while (-1 != (len = bis.read(buf, 0, buf.length))) {   
		    bos.write(buf, 0, len);   
		}
		bis.close();
		bos.close();
				
		if (file.exists()){
			file.delete();
		}
	}
	
	//修改密码
	@RequestMapping("edit_PSW.do")
	@ResponseBody
	public String edit_PSW(String old_PSW, String new_PSW, String new_PSW_again) throws UnsupportedEncodingException{
		if(old_PSW==null || old_PSW.trim().equals("")){
			return URLEncoder.encode("旧密码未填", "UTF-8");
		}
		
		if(new_PSW==null || new_PSW.trim().equals("")){
			return URLEncoder.encode("新密码未填", "UTF-8");
		}
		
		if(new_PSW_again==null || new_PSW_again.trim().equals("") || !new_PSW_again.equals(new_PSW)){
			return URLEncoder.encode("两次密码不匹配", "UTF-8");
		}
		
		LoginUser loginUser = loginUserService.queryByUsername(WebApplication.getCurrUser().getUsername());
		
		String psw = loginUser.getPassword();
		if(!psw.equals(old_PSW)){
			return URLEncoder.encode("修改失败，原生密码输入错误", "UTF-8");
		}
		
		
		loginUser.setPassword(new_PSW);
		loginUserService.updatePSW(loginUser);
		
		return URLEncoder.encode("修改密码成功", "UTF-8");
	}
	
	
	private String GenerateTalkRecommendExcel(String org_name) throws BiffException, IOException, WriteException {
		// TODO Auto-generated method stub
		String dir = WebApplication.getContextPath();
		dir += "/resource/PSGRes/excel"; 		// 模板文件所在目录
		String tempFileName = dir+"/TalkRecommendModel.xls";
		
		String fileName= "TalkRecommend.xls";
		Workbook wb = Workbook.getWorkbook(new File(tempFileName));			//获取模板
    	WritableWorkbook wwb = Workbook.createWorkbook(new File(dir+"/"+fileName), wb); 	//在服务器上创建被写的临时文件
    	WritableFont  wf = new WritableFont(WritableFont.createFont("黑体"), 11 ,WritableFont.NO_BOLD,false); 	//设置字体
    	WritableCellFormat wcf = new WritableCellFormat(wf); 
    	wcf.setWrap(true);								//自动换行
    	wcf.setVerticalAlignment(VerticalAlignment.CENTRE); 		//设置垂直居中对齐
    	wcf.setAlignment(jxl.format.Alignment.CENTRE);			//设置水平居中对齐
    	
    	WritableSheet sheet =wwb.getSheet(0);
    	
    	//加单位名称
    	Label org_labe = new Label(0,1,"单位:"+org_name,wcf); 
    	sheet.addCell(org_labe);
    	
    	//加制表时间
    	Date date=new Date();
    	DateFormat format=new SimpleDateFormat("yyyy年MM月dd日");
    	String time=format.format(date);
    	Label titleLabel = new Label(11,1,""+time ,wcf);
    	sheet.addCell(titleLabel);
    	
    	//wf = new WritableFont(WritableFont.createFont("宋体"), 10,WritableFont.NO_BOLD,false); 	//设置字体
    	//wcf.setBorder(jxl.format.Border.ALL,jxl.format.BorderLineStyle.THIN); 		//设置单元格边框
		//xxx
    	
        wwb.write();  
    	wwb.close();
    	
    	String readpath = WebApplication.getSession().getServletContext().getRealPath("/resource/PSGRes/excel/");
		return readpath+"/"+fileName;
		
	}

	private String GenerateMeetingRecommendExcel(String org_name) throws BiffException, IOException, WriteException {
		// TODO Auto-generated method stub
		String dir = WebApplication.getContextPath();
		dir += "/resource/PSGRes/excel"; 		// 模板文件所在目录
		String tempFileName = dir+"/MeetingRecommendModel.xls";
		
		String fileName= "MeetingRecommed.xls";
		Workbook wb = Workbook.getWorkbook(new File(tempFileName));			//获取模板
    	WritableWorkbook wwb = Workbook.createWorkbook(new File(dir+"/"+fileName), wb); 	//在服务器上创建被写的临时文件
    	WritableFont  wf = new WritableFont(WritableFont.createFont("宋体"), 10 ,WritableFont.NO_BOLD,false); 	//设置字体

    	WritableCellFormat wcf = new WritableCellFormat(wf); 
    	wcf.setBorder(jxl.format.Border.ALL,jxl.format.BorderLineStyle.THIN); 		//设置单元格边框
    	wcf.setWrap(true);								//自动换行
    	wcf.setVerticalAlignment(VerticalAlignment.CENTRE); 		//设置垂直居中对齐
    	wcf.setAlignment(jxl.format.Alignment.CENTRE);			//设置水平居中对齐
    	
    	WritableSheet sheet =wwb.getSheet(0);
    	
    	//加单位名称
    	Label org_labe = new Label(0,1,"单位:"+org_name,wcf); 
    	sheet.addCell(org_labe);
    	
    	//加制表时间
    	Date date=new Date();
    	DateFormat format=new SimpleDateFormat("yyyy年MM月dd日");
    	String time=format.format(date);
    	Label titleLabel = new Label(24,1,""+time ,wcf);
    	sheet.addCell(titleLabel);
    	
    	
		//xxx
    	
        wwb.write();  
    	wwb.close();
    	
    	String readpath = WebApplication.getSession().getServletContext().getRealPath("/resource/PSGRes/excel/");
		return readpath+"/"+fileName;
		
	}
	
	
	//生成本单位报名人员的excel数据
	private String GenerateRegisterExcel() throws BiffException, IOException, WriteException {
		// TODO Auto-generated method stub
		HttpSession session = WebApplication.getSession();
		int empanelId = (Integer)(session.getAttribute("empanelId"));
		
		Studygroup studygroup = studyGroupService.queryByUsername(WebApplication.getCurrUser().getUsername());
		
		//首先获取数据
		//导出Excel所需的模板类，数据存放里面
		List<UnitRegisterPerson> excelList = new ArrayList<UnitRegisterPerson>();
		
		
		List<Entryform> elist = entryFormService.queryByOrgIdAndEmpanelId(studygroup.getOrganizationId(),empanelId);	//本单位下在某选任工作中所有的报名人员
		//去找报了什么岗位
		for(Entryform entryform: elist){
			List<EntryformJob> entryformJoblist = entryFormJobService.queryByEntryformId(entryform.getId());
			if(entryformJoblist!=null && entryformJoblist.size()>0){
				for(EntryformJob entryformJob:entryformJoblist){
					String jobName = entryformJob.getEmpanelJob().getJob();			//岗位名称
					String orgName = entryformJob.getEmpanelJob().getOrganization().getName();		//所报名岗位的单位名称
					String jobLevel = entryformJob.getEmpanelJob().getLevel();			//岗位级别
					
					UnitRegisterPerson info = new UnitRegisterPerson();
					info.setJobString(orgName+jobName);
					info.setJobLevel(jobLevel);
					info.setEntryform(entryform);
					excelList.add(info);
				}
			}
		}
		
		//把岗位名称相同的项聚合在一起，UnitRegisterPerson继承Comparable方法，使得可以排序
		Collections.sort(excelList);
		
		//开始根据模板写入数据
		//...
		String dir = WebApplication.getContextPath();
		dir += "/resource/PSGRes/excel"; 		// 模板文件所在目录
		String tempFileName = dir+"/RegisterExcelModel.xls";
		
		String fileName= "register.xls";
		Workbook wb = Workbook.getWorkbook(new File(tempFileName));			//获取模板
    	WritableWorkbook wwb = Workbook.createWorkbook(new File(dir+"/"+fileName), wb); 	//在服务器上创建被写的临时文件
    	WritableFont  wf = new WritableFont(WritableFont.createFont("宋体"), 10 ,WritableFont.NO_BOLD,false); 	//设置字体
    	WritableCellFormat wcf = new WritableCellFormat(wf); 
    	wcf.setWrap(true);					//自动换行
    	wcf.setBorder(jxl.format.Border.ALL,jxl.format.BorderLineStyle.THIN); 		//设置单元格边框
    	wcf.setVerticalAlignment(VerticalAlignment.CENTRE); 		//设置垂直居中对齐
    	wcf.setAlignment(jxl.format.Alignment.CENTRE);			//设置水平居中对齐
    	WritableSheet sheet =wwb.getSheet(0);
    	//加制表时间
    	Date date=new Date();
    	DateFormat format=new SimpleDateFormat("yyyy年MM月dd日");
    	String time=format.format(date);
    	Label titleLabel = new Label(27,1,""+time ,wcf);
    	sheet.addCell(titleLabel);
    	
        int data_id=0;		//序号
        int merge_from = 4;		//起始合并行数
        int merge_end=4;		//结束合并行数
        for(int i=0; i<excelList.size(); i++){
        	data_id++;
        	UnitRegisterPerson data = excelList.get(i);
        	sheet.setRowView(data_id+3, 1000, false); 			//设置行高
        	
        	Label col1 = new Label(2, data_id+3, data.getJobString() ,wcf);
        	sheet.addCell(col1);
        	if(i>0){			//检查岗位名称是否跟上一个数据相同，如果相同则合并单元格
        		if(excelList.get(i-1).getJobString().equals(data.getJobString()) ){
        			merge_end = data_id+3;			//更新  结束合并行号
        		}
        		else{	
        			if(merge_from != merge_end){
        				sheet.mergeCells( 2 , merge_from , 2 , merge_end );			//从 第3列第merge_from行 到 第3列第merge_end行 进行合并
        				merge_from = data_id+3;		//更新起始合并行号
        				merge_end = data_id+3;		//更新结束合并行号
        			}
        		}
        	}
        	
        	//如果i是最后一行,最后需要检查是否需要合并
        	if(i == excelList.size()-1){
        		if(merge_from != merge_end){
        			sheet.mergeCells( 2 , merge_from , 2 , merge_end );	
        		}
        	}
        	
        	Label col2 = new Label(3, data_id+3, data_id+"" ,wcf);
        	sheet.addCell(col2);
        	Label col3 = new Label(4, data_id+3, data.getEntryform().getName() ,wcf);
        	sheet.addCell(col3);
        	Label col4 = new Label(5, data_id+3, data.getEntryform().getOrganization().getName() ,wcf);
        	sheet.addCell(col4);
        	Label col5 = new Label(6, data_id+3, data.getEntryform().getPresentlyJob() ,wcf);
        	sheet.addCell(col5);
        	Label col6 = new Label(7, data_id+3, data.getEntryform().getSpecialJob() ,wcf);
        	sheet.addCell(col6);
        	Label col7 = new Label(8, data_id+3, data.getEntryform().getSex() ,wcf);
        	sheet.addCell(col7);
        	Label col8 = new Label(9, data_id+3, data.getEntryform().getNationality() ,wcf);
        	sheet.addCell(col8);
        	Label col9 = new Label(10, data_id+3, data.getEntryform().getBirth() ,wcf);
        	sheet.addCell(col9);
        	String[] place = data.getEntryform().getNativePlace().split("-");
        	String p="";
        	if(place.length>=2){
        		p=place[0].substring(0, place[0].length()-1)+place[1].substring(0, place[1].length()-1);
        	}
        	else if(place.length>0){
        		p=place[0];
        	}
        	Label col10 = new Label(11, data_id+3, p ,wcf);
        	sheet.addCell(col10);
        	Label col11 = new Label(12, data_id+3, data.getEntryform().getWorkTime() ,wcf);
        	sheet.addCell(col11);
        	Label col12 = new Label(13, data_id+3, data.getEntryform().getCollegeTime() ,wcf);
        	sheet.addCell(col12);
        	Label col13 = new Label(14, data_id+3, data.getEntryform().getPartyName() ,wcf);
        	sheet.addCell(col13);
        	Label col14 = new Label(15, data_id+3, data.getEntryform().getFullTimeEducationRecord() ,wcf);
        	sheet.addCell(col14);
        	Label col15 = new Label(16, data_id+3, "" ,wcf);
        	sheet.addCell(col15);
        	Label col16 = new Label(17, data_id+3, "" ,wcf);
        	sheet.addCell(col16);
        	Label col17 = new Label(18, data_id+3, "" ,wcf);
        	sheet.addCell(col17);
        	Label col18 = new Label(19, data_id+3, "" ,wcf);
        	sheet.addCell(col18);
        	Label col19 = new Label(20, data_id+3, "" ,wcf);
        	sheet.addCell(col19);
        	Label col20 = new Label(21, data_id+3, "xx" ,wcf);			//现职时间，没有这个数据
        	sheet.addCell(col20);
        	Label col21 = new Label(22, data_id+3, "" ,wcf);				//现级别
        	sheet.addCell(col21);
        	Label col22 = new Label(23, data_id+3, "" ,wcf);
        	sheet.addCell(col22);
        	Label col23 = new Label(24, data_id+3, data.getJobLevel() ,wcf);			//拟提任级别
        	sheet.addCell(col23);
        	Label col24 = new Label(25, data_id+3, "" ,wcf);
        	sheet.addCell(col24);
        	Label col25 = new Label(26, data_id+3, "" ,wcf);
        	sheet.addCell(col25);
        	Label col26 = new Label(27, data_id+3, "" ,wcf);
        	sheet.addCell(col26);
        	Label col27 = new Label(28, data_id+3, "" ,wcf);
        	sheet.addCell(col27);
        	Label col28 = new Label(29, data_id+3, "" ,wcf);
        	sheet.addCell(col28);
        }
        
		
        wwb.write();  
    	wwb.close();
    	
    	String readpath = WebApplication.getSession().getServletContext().getRealPath("/resource/PSGRes/excel/");
		return readpath+"/"+fileName;
	}
	
	
}
