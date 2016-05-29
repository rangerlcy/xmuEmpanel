package com.model.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CheckCodeCacheFilter implements Filter {
	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain) throws IOException, ServletException {
		HttpServletRequest HttpRequest = (HttpServletRequest) request;
		HttpServletResponse HttpResponse = (HttpServletResponse) response;
		if(HttpRequest.getSession().getAttribute("rand")==null){
			HttpRequest.getSession().setAttribute("errmsg", "验证码错误");
			return;
		}
		if (request.getParameter("j_checkCode").toString().equals(HttpRequest.getSession().getAttribute("rand").toString())) {
			HttpRequest.getSession().removeAttribute("rand");			//验证码通过后从session中删除，防止用脚本爆破
			HttpRequest.getSession().setAttribute("errmsg", "");
			filterChain.doFilter(request, response);		//验证码无误，进入事先在xml中配置的url过滤器,这里就进入了spring security的验证
			
			
		} else {
			HttpRequest.getSession().setAttribute("errmsg", "验证码错误");
			HttpRequest.getSession().removeAttribute("rand");
			HttpResponse.sendRedirect(HttpRequest.getContextPath().toString() + "/");
			return;
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}
}
