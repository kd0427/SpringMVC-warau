package com.global.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.global.dao.PetroDAO;
import com.global.vo.PetroVO;

@Service
public class PetroService {

	@Autowired
	private PetroDAO petroDAO;
	
	
	public List<PetroVO> getPetroList() {
		
		return petroDAO.getPetroList();
	}
	
	
}
