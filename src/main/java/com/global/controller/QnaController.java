package com.global.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.global.service.QnaService;
import com.global.vo.QnaVO;

@Controller
@RequestMapping("/board")
public class QnaController {
	
	@Autowired
	private QnaService qnaService;
	
	@GetMapping("/qna")
	public String qna(Model model) {
		List<QnaVO> QnaList =  qnaService.getQnaList();
		
		model.addAttribute("QnaList", QnaList);
		
		return "board/notice/QnaList";
	}
}
