package com.security.service;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.security.pojo.LoginUserDetails;
import com.pojo.RoleResource;
import com.pojo.Sysrole;
import com.service.RoleResourceService;
import com.service.SysRoleService;
import com.model.utils.StringUtil;

/**
 * @Type: com.cadre.security.service.UserInfoLoadFacade.java
 * @ClassName: UserInfoLoadFacade
 * @Description: 用户登录成功后，资源、权限、角色等信息加载器<br/>
 * 
 */
@Component("userInfoLoadFacade")
public class UserInfoLoadFacade {
	Logger LOG = LogManager.getLogger(UserInfoLoadFacade.class);
	@Autowired
	SysRoleService sysroleService;
	
	@Autowired
	RoleResourceService sysResourceService;
	
	
	/**
	 * 加载用户角色，资源详细信息
	 * @param userDetials
	 */
	protected void loadUserAllInfo(LoginUserDetails currUser) {
    	Integer userRoleId = currUser.getUser().getRoleId();
    	LOG.debug("加载用户身份");
    	List<Sysrole> roleList = sysroleService.getRoleNameByRoleId(userRoleId);
    	
    	LOG.debug("加载用户所拥有的资源");
    	List<RoleResource> resourceList = sysResourceService.getUrlByRoleId(userRoleId);

    	currUser.setRoles(roleList);
    	currUser.setResources(resourceList);
	}
	
}
