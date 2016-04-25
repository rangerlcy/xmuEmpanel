package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.common.WebApplication;
import com.pojo.LoginUser;
import com.pojo.Sysrole;
import com.service.SysRoleService;
import com.service.UserService;


@Controller
public class LoginController {
	@Autowired
	UserService userService;
	@Autowired
	SysRoleService roleService;
	
	
	@RequestMapping("/index.do")
	public String welcome(Model model){
		if (WebApplication.getCurrUser().getUsername() != null ){
			String ssString = WebApplication.getCurrUser().getUsername();
			LoginUser user = userService.findByUsername(ssString);
			Sysrole role =  roleService.getRoleNameByRoleId(user.getRoleId()).get(0);
			model.addAttribute("user", user);
			model.addAttribute("role", role);
		}
		return "index";
	}
	
	@RequestMapping("/test.do")
	public String test(Model model){
		return "staff/staff_info";
	}
}
