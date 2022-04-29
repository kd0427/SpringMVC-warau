package com.global.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.global.dao.NoticeDAO;
import com.global.vo.NoticeVO;

@Service
public class NoticeService {

	@Autowired
	private NoticeDAO noticeDAO;
	
	public List<NoticeVO> getNoticeList(){
		return noticeDAO.getNoticeList();
	}
	
	public NoticeVO getNotice(int notice_idx) {
		return noticeDAO.getNotice(notice_idx);
	}
}
