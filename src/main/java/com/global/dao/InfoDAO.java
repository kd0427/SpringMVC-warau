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
	
	//리스트 가져오기
	public List<InfoVO> getList(){
		return sqlSessionTemplate.selectList("info.getList");
	}
	
	//글쓰기
	public void write(InfoVO writeInfoVO) {
		sqlSessionTemplate.insert("info.write",writeInfoVO);
	}
	//글읽기
		public InfoVO getContentInfo(int info_idx) {
			return sqlSessionTemplate.selectOne("info.getContentInfo", info_idx);
		}
	
}
