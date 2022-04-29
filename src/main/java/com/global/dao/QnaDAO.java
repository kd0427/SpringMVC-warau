package com.global.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.global.vo.QnaVO;


@Repository
public class QnaDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<QnaVO> getQnaList(){
		return sqlSessionTemplate.selectList("qna.getQnaList");
	}
}