package com.global.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import com.global.dao.AdoptDAO;
import com.global.vo.AdoptVO;
import com.global.vo.UserVO;

@Service
public class AdoptService {
	
	@Autowired
	private AdoptDAO adoptDAO;
	
	@Resource(name="loginUserVO")
	@Lazy
	private UserVO loginUserVO;
	
	//리스트가져오기
	public List<AdoptVO> getList(){
		return adoptDAO.getList();
	}
	
	//글쓰기
	
}
