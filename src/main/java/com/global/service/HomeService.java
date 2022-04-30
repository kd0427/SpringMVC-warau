package com.global.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.global.dao.PetroDAO;

import com.global.vo.PetroVO;


@Service
public class HomeService {
	
	//메인 화면에 게시글 불러오기 
	@Autowired  // 펫트로
	private PetroDAO petroDao;
	

		//펫트로 게시판에 있는 글 
		public List<PetroVO> petroHomeList() {
			RowBounds rowBounds = new RowBounds(0, 4); //펫트로는 글 4개만
			return petroDao.getPetroList(rowBounds);
		}
	
		
		

}
