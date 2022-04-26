package com.global.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;

import com.global.service.ShareService;
import com.global.vo.ShareVO;



@Controller
@RequestMapping("/board")
public class ShareController {

	@Autowired
	private ShareService shareService;
	
	
	@GetMapping("/share")
	public String share(Model model) {

		List<ShareVO> shareList = shareService.getList();
		
		model.addAttribute("shareList",shareList);
		
		
		
		
		return "board/share/share";
	}

	
	
}
