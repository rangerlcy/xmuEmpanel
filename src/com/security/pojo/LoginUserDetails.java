package com.security.pojo;

import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.pojo.Sysrole;


/**
 * @Type: com.cadre.security.pojo.LoginUserDetails.java
 * @ClassName: LoginUserDetails
 * @Description: <br/>
 */

//继承spring security的User类
public class LoginUserDetails extends User {
	private static final long serialVersionUID = 1L;

	
	//构造方法一
	public LoginUserDetails(String username, String password, boolean enabled,
			boolean accountNonExpired, boolean credentialsNonExpired,
			boolean accountNonLocked,
			Collection<? extends GrantedAuthority> authorities) {
		
		super(username, password, enabled, accountNonExpired, credentialsNonExpired,
				accountNonLocked, authorities);
	}
	
	//构造方法二
	public LoginUserDetails(String username, String password, Collection<? extends GrantedAuthority> authorities) {
        super(username,password,authorities);
    }
	
	//重写父类方法一
	@Override
    public boolean equals(Object o) {
        if (o instanceof LoginUserDetails) {
            return getUsername().equals(((LoginUserDetails) o).getUsername());
        }
        return false;
    }

    /**
     * Returns the hashcode of the {@code username}.
     */
	//重写二
    @Override
    public int hashCode() {
        return getUsername().hashCode();
    }
    
	
	private com.pojo.LoginUser loginUser;
	private List<Sysrole> roles;
	
	public List<Sysrole> getRoles() {
		return roles;
	}

	public void setRoles(List<Sysrole> roles) {
		this.roles = roles;
	}
	
	public List<Sysrole> getSysroles(){
		return roles;
	}

	public com.pojo.LoginUser getUser() {
		return loginUser;
	}

	public void setUser(com.pojo.LoginUser user) {
		this.loginUser = user;
	}

	
}
