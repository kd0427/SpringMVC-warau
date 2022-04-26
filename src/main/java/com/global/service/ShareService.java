package com.global.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import com.global.dao.ShareDAO;
import com.global.vo.ShareVO;
import com.global.vo.UserVO;

@Service
public class ShareService {
	
	@Autowired
	private ShareDAO shareDAO;
	
	@Resource(name="loginUserVO")
	@Lazy
	private UserVO loginUserVO;
	
	//리스트가져오기
	public List<ShareVO> getList(){
		return shareDAO.getList();
	}
	
	//글쓰기
	
}
