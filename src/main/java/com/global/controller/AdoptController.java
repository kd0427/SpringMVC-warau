package com.global.controller;


import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.global.service.AdoptService;
import com.global.vo.AdoptVO;



@Controller
@RequestMapping("/board")
public class AdoptController {
	
	@Autowired
	private AdoptService adoptService;
	
	
	@GetMapping("/adopt")
	public String adopt(Model model) {

		List<AdoptVO> adoptList = adoptService.getList();
		
		model.addAttribute("adoptList",adoptList);
		
		System.out.println(adoptList);
		
		
		return "board/adopt/adopt";
	}

	@GetMapping("/write")
	public String write() {
		return"board/adopt/write";
	}
	
	@PostMapping("/write_pro")
	public String write_pro(@Valid @ModelAttribute("writeAdoptVO") AdoptVO writeAdoptVO) {
		
		return "";
	}
}
