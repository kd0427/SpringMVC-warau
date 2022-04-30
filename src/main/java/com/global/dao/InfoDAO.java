package com.global.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.global.vo.AdoptVO;
import com.global.vo.InfoVO;

@Repository
public class InfoDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	// 리스트 가져오기
	public List<InfoVO> getList(RowBounds rowbounds) {
		return sqlSessionTemplate.selectList("info.getList" ,null, rowbounds);
	}
	
	
	// 글쓰기
	public void write(InfoVO writeInfoVO) {
		sqlSessionTemplate.insert("info.write", writeInfoVO);
	}

	// 글읽기
	public InfoVO getContentInfo(int info_idx) {
		return sqlSessionTemplate.selectOne("info.getContentInfo", info_idx);
	}

	// 글 삭제
	public void infoWriteDelete(int info_idx) {
		sqlSessionTemplate.delete("info.infoWriteDelete", info_idx);
	}

	// 글 수정
	public void infoModifyInfo(InfoVO infoModifyVO) {
		sqlSessionTemplate.update("info.infoModifyInfo", infoModifyVO);
	}
	// 페이징

	public int infoWriteCnt() {
		return sqlSessionTemplate.selectOne("info.infoWriteCnt");
	}

}
