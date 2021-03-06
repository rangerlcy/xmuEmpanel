package com.common;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.context.request.ServletWebRequest;

import com.security.pojo.LoginUserDetails;


/**
 * @Type: com.idecisions.common.WebApplication.java
 * @ClassName: WebApplication
 * @Description: <br/>
 * 
 */
public class WebApplication {
	private SessionRegistry sessionRegistry;
	
	public static LoginUserDetails getCurrUser() throws NullPointerException{
		try {
			Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			if (principal instanceof UserDetails) { 
				return (LoginUserDetails) principal;
			} 
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return null;
	}
	
	/**
	 * 得到session
	 * @return
	 */
	public static HttpSession getSession() {
		HttpSession session = null;
		try {
			session = getRequest().getSession();
		
		} catch (Exception e) {
		}
		return session;
	}

	/**
	 * 得到Request
	 * @return
	 */
	public static HttpServletRequest getRequest() {
		ServletRequestAttributes attrs = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
		  
		return attrs.getRequest();
	}
	
	/**
	 * 得到Response
	 * @return
	 */
	public static HttpServletResponse getResponse(){
		HttpServletResponse response = ((ServletWebRequest)RequestContextHolder.getRequestAttributes()).getResponse();
		return response;
	}
	
	/**
	 * 返回转发字段串
	 * @param str
	 * @return
	 */
	public static String forwardTo(String str){
		return "forward:" + str;
	}
	
	/**
	 * 返回重定向字段串
	 * @param str
	 * @return
	 */
	public static String redirectTo(String str) {
		return "redirect:" + str;
	}
	
	public static String getContextPath() {
		return getSession().getServletContext().getRealPath("");
	}
	
	public static String getUploadFileFolder() {
		return getContextPath()+"/upload";
	}
	
	public static String getRealStaffUploadPhoto(){
		return getContextPath()+"/staff_photo";
	}
	
	public static String getRelativeStaffUploadPhoto(){
		return "/empanel/staff_photo";
	}
	
	/**
	 * 得到当前用户照片存放位置
	 * @return
	 */
	public static String getCurrUserImgFolder() {
		String folder = getContextPath()+"/upload/user/img/";
		File file = new File(folder);
		if(!file.exists()) {
			file.mkdir();
		}
		return folder+"/";
	}
}
