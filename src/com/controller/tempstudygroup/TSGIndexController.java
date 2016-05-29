package com.controller.tempstudygroup;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.common.WebApplication;


@Controller
@RequestMapping("/TSG")
public class TSGIndexController {
	
	@RequestMapping("TSG_index.do")
	public String TSG_index(Model model){
		model.addAttribute("username", WebApplication.getCurrUser().getUsername());
		return "tempstudygroup/TSG_index";
	}
}
