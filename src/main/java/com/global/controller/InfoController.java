package com.global.controller;


import java.util.List;
import com.global.service.InfoService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.global.vo.InfoVO;



@Controller
@RequestMapping("/board")
public class InfoController {
	
	@Autowired
	private InfoService infoService;
	
	
	@GetMapping("/info")
	public String info(Model model) {

		List<InfoVO> infoList = infoService.getList();
		
		model.addAttribute("infoList",infoList);
		
		System.out.println(infoList);
		
		
		return "board/info";
	}


}
