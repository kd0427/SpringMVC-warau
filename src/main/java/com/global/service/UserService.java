package com.global.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import com.global.dao.UserDAO;
import com.global.vo.UserVO;

@Service
public class UserService {
	@Autowired
	private UserDAO userDao;
	
	@Resource(name = "loginUserVO")
	@Lazy
	private UserVO loginUserVO;
	
	///아이디 중복확인
	public boolean checkUserIdExist(String user_id) {
		String user_name = userDao.checkUserIdExist(user_id);
		
		if(user_name == null) {
			return true;
		}else {
			return false;
		}
	}
	
	/////회원가입
	public void addUserInfo(UserVO joinUserVO) {
		userDao.addUserInfo(joinUserVO);
	}
	
	//////로그인
	public void getLoginUserInfo(UserVO tempLoginUserVO) {
		
		UserVO tempLoginUserVO2 = userDao.getLoginUserInfo(tempLoginUserVO);
		
		if(tempLoginUserVO2 != null) {
			loginUserVO.setUser_id(tempLoginUserVO2.getUser_id());
			loginUserVO.setUser_name(tempLoginUserVO2.getUser_name());
			loginUserVO.setUserLogin(true);
		}
	}
	
	/////로그인한 사람의 정보 가져오기
	public void getModifyUserInfo(UserVO modifyUserVO) {
		
		UserVO tempModify = userDao.getModifyUserInfo(loginUserVO.getUser_id());
		
		modifyUserVO.setUser_id(loginUserVO.getUser_id());
		modifyUserVO.setUser_name(tempModify.getUser_name());
		modifyUserVO.setUser_email(tempModify.getUser_email());
		modifyUserVO.setUser_pet(tempModify.getUser_pet());
		modifyUserVO.setUser_date(tempModify.getUser_date());
		
	}
	
	//정보수정
	public void modifyUserInfo(UserVO modifyUserVO) {
		modifyUserVO.setUser_id(loginUserVO.getUser_id());
		userDao.modifyUserInfo(modifyUserVO);
	}
}
