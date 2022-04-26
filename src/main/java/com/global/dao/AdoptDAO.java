package com.global.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.global.vo.AdoptVO;

@Repository
public class AdoptDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//리스트 가져오기
	public List<AdoptVO> getList(){
		return sqlSessionTemplate.selectList("adopt.getList");
	}
	
	//글쓰기
	public void write(AdoptVO writeAdoptVO) {
		sqlSessionTemplate.insert("adopt.write",writeAdoptVO);
	}
	
	//글읽기
	public AdoptVO getContentInfo(int adopt_idx) {
		return sqlSessionTemplate.selectOne("adopt.getContentInfo", adopt_idx);
	}
}
