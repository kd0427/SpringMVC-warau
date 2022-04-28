package com.global.interceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.web.servlet.HandlerInterceptor;

import com.global.service.PetroService;
import com.global.vo.PetroVO;
import com.global.vo.UserVO;

public class CheckPetroInterceptor implements HandlerInterceptor{
	
	@Resource(name = "loginUserVO")
	@Lazy
	private UserVO loginUserVO;
	
	@Autowired
	private PetroService petroService; 
	
	
	@Override   //수정, 삭제만 반응
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		
		
		String str1 = request.getParameter("petro_idx"); //펫트로 게시글 인덱스 번호 추출
		int petro_idx = Integer.parseInt(str1);
		
		PetroVO currentPetroVO = petroService.petroWriteInfo(petro_idx); // 현재 게시글에 대한 정보 가져옴 
		
		if(!currentPetroVO.getPetro_writer().equals(loginUserVO.getUser_id())) //글 작성한 사람의 아이디와 로그인 한 사람의 아이디가 다르면
		{
			String contextPath = request.getContextPath();
			response.sendRedirect(contextPath + "/board/petro/not_writer");
			return false;
		}
		
		return true;
		
		
	}

}
