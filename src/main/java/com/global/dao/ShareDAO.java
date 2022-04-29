package com.global.dao;


	import java.util.List;

	import org.mybatis.spring.SqlSessionTemplate;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Repository;

import com.global.vo.ShareVO;

	@Repository
	public class ShareDAO {
		
		@Autowired
		private SqlSessionTemplate sqlSessionTemplate;
		
		//리스트 가져오기
		public List<ShareVO> getList(){
			return sqlSessionTemplate.selectList("share.getList");
		}
		
		//글쓰기
		public void write(ShareVO writeShareVO) {
			sqlSessionTemplate.insert("share.write",writeShareVO);
		}
		//글읽기
		public ShareVO getContentInfo(int share_idx) {
			return sqlSessionTemplate.selectOne("share.getContentInfo", share_idx);
		}
	}

