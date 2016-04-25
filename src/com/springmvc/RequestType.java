package com.springmvc;

import javax.servlet.http.HttpServletRequest;

/**
 * @Type: com.cadre.springmvc.RequestType.java
 * @ClassName: RequestType
 * @Description: <br/>
 * 
 */
public class RequestType {

	public static boolean isAjaxRequest(HttpServletRequest request){
        String header = request.getHeader("X-Requested-With");
        if (header != null && "XMLHttpRequest".equals(header))
            return true;
        else
            return false;
	}
	
	public static boolean isNotAjasRequest(HttpServletRequest request){
		return !isAjaxRequest(request);
	}
}
