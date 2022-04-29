package com.global.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.global.dao.AdoptDAO;
import com.global.dao.InfoDAO;
import com.global.vo.AdoptVO;
import com.global.vo.InfoVO;

@Service
public class InfoService {
	
	@Autowired
	private InfoDAO infoDAO;
	
	//ë¦¬ìŠ¤?Š¸ê°?? ¸?˜¤ê¸?
	public List<InfoVO> getList(){
		return infoDAO.getList();
	}
}
