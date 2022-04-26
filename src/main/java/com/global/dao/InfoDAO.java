package com.global.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.global.vo.AdoptVO;
import com.global.vo.InfoVO;

@Repository
public class InfoDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<InfoVO> getList(){
		return sqlSessionTemplate.selectList("info.getList");
		
	}
}
