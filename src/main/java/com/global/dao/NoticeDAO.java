package com.global.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.global.vo.NoticeVO;

@Repository
public class NoticeDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<NoticeVO> getNoticeList(){
		return sqlSessionTemplate.selectList("notice.getNoticeList");
	}

}
