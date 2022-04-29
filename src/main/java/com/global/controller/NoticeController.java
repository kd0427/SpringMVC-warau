package com.global.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.global.service.NoticeService;
import com.global.vo.AdoptVO;
import com.global.vo.NoticeVO;

@Controller
@RequestMapping("/board")
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	@GetMapping("/notice")
	public String notice(Model model) {
		List<NoticeVO> noticeList =  noticeService.getNoticeList();
		
		model.addAttribute("noticeList", noticeList);
		
		return "board/notice/NoticeList";
	}
	
	@GetMapping("/read")
	public String read(@RequestParam("notice_idx") int notice_idx,
						Model model) {
		NoticeVO rNoticeVO = noticeService.getNotice(notice_idx);
		model.addAttribute("rNoticeVO",rNoticeVO);
		model.addAttribute("notice_idx", notice_idx);
		
		return "board/notice/Notice";
	}


};
