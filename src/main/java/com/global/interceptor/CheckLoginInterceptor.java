package com.global.interceptor;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.context.annotation.Lazy;
import org.springframework.web.servlet.HandlerInterceptor;

import com.global.vo.UserVO;

public class CheckLoginInterceptor implements HandlerInterceptor{

	@Resource(name="loginUserVO")
	@Lazy
	private UserVO loginUserVO;
	
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		if(loginUserVO.isUserLogin()==false) {
			String contextPath = request.getContextPath();
			response.sendRedirect(contextPath+"/user/not_login");
			System.out.println("왔냐");
			return false;
		}
		
		return true;
	}
}
