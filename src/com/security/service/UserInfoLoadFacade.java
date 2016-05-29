package com.security.service;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.security.pojo.LoginUserDetails;
import com.pojo.Sysrole;
import com.service.SysRoleService;
import com.model.utils.StringUtil;


@Component("userInfoLoadFacade")
public class UserInfoLoadFacade {
	Logger LOG = LogManager.getLogger(UserInfoLoadFacade.class);
	@Autowired
	SysRoleService sysroleService;
	
	
	protected void loadUserAllInfo(LoginUserDetails currUser) {
    	Integer userRoleId = currUser.getUser().getRoleId();
    	LOG.debug("加载用户身份");
    	List<Sysrole> roleList = sysroleService.getRoleNameByRoleId(userRoleId);
    	
    	currUser.setRoles(roleList);
	}
	
}
