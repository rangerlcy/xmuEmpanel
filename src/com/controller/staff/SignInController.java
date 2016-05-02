package com.controller.staff;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pojo.Entryform;
import com.pojo.LoginUser;
import com.pojo.User;
import com.service.EntryFormService;
import com.service.UserService;


@Controller
public class SignInController {
	
	@Autowired
	UserService userService;
	@Autowired
	EntryFormService entryformService;
	
	//教职工注册
	@RequestMapping("sign_in.do")
	@ResponseBody
	public String sign_in(Model model, HttpServletRequest request){
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String card_number = request.getParameter("card_number");
		String email = request.getParameter("email");
		String fullname = request.getParameter("fullname");
		String gender = request.getParameter("gender");
		String ethnic = request.getParameter("ethnic");
		
		//重复性数据检查
		List<LoginUser> loginList = userService.queryAllLoginUser();
		for(LoginUser u:loginList){
			if(u.getUsername().equals(username)){
				return "duplicate_username";
			}
		}
		List<User> uuList = userService.queryAllUser();
		for(User u:uuList){
			if(u.getEmail().equals(email)){
				return "duplicate_email";
			}
			if(u.getIdentifyNum().equals(card_number)){
				return "duplicate_cardnum";
			}
		}
		
		//通过检查后添加进数据库
		User user = new User();
		LoginUser loginuser = new LoginUser();
		Entryform entryform = new Entryform();
		
		loginuser.setUsername(username);
		loginuser.setPassword(password);
		loginuser.setRoleId(3);		//角色3表示教职工
		
		user.setLoginUser(loginuser);
		user.setEmail(email);
		user.setIdentifyNum(card_number);
		
		entryform.setEmail(email);
		entryform.setName(fullname);
		entryform.setSex(gender);
		entryform.setNationality(ethnic);
		entryform.setUser(user);
		
		//这里对三张表进行了新增操作，user,login_user,entryform
		userService.addNewUser(loginuser, user);
		entryformService.addOneItem(entryform);
		return "success";
	}
}
