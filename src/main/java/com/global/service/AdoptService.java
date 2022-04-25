package com.global.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.global.dao.AdoptDAO;
import com.global.vo.AdoptVO;

@Service
public class AdoptService {
	
	@Autowired
	private AdoptDAO adoptDAO;
	
	//리스트가져오기
	public List<AdoptVO> getList(){
		return adoptDAO.getList();
	}
}
