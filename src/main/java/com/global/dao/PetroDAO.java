package com.global.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.global.vo.PetroVO;

@Repository
public class PetroDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	//게시글 목록 가져오기 
	public List<PetroVO> getPetroList() {
		
		return sqlSessionTemplate.selectList("petro.getPetroList");
		
	}

}
