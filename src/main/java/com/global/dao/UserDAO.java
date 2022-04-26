package com.global.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.global.vo.UserVO;

@Repository
public class UserDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//디비에 아이디 있나 확인
	public String checkUserIdExist(String user_id) {
		return sqlSessionTemplate.selectOne("user.checkUserIdExist", user_id);
	}
	
	//회원가입
	public void addUserInfo(UserVO joinUserVO) {
		sqlSessionTemplate.insert("user.addUserInfo", joinUserVO);
	}
	
	//로그인
	public UserVO getLoginUserInfo(UserVO tempLoginUserVO) {
		return sqlSessionTemplate.selectOne("user.getLoginUserInfo", tempLoginUserVO);
	}
	
	// 로그인한 사람의 정보 가져오기
	public UserVO getModifyUserInfo(String user_id) {
		return sqlSessionTemplate.selectOne("user.getModifyUserInfo",user_id);
	}
	
	//
	// 로그인한 사람 정보수정
	public void modifyUserInfo(UserVO modifyUserVO) {
		sqlSessionTemplate.update("user.modifyUserInfo",modifyUserVO);
	}
	
}
