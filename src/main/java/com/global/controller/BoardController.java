package com.global.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.global.service.AdoptService;
import com.global.service.PetroService;
import com.global.vo.AdoptVO;
import com.global.vo.PetroVO;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	private AdoptService adoptService;
	
	@Autowired
	private PetroService petroService;

	@GetMapping("/petro")
	public String petro(Model model) {
		
		List<PetroVO> petroContentList = petroService.getPetroList();
		model.addAttribute("petroContentList", petroContentList);
		
		return "board/petro";
	}
	
	@GetMapping("/share")
	public String share() {
		
		return "board/share";
	}
	
	@GetMapping("/info")
	public String info() {
		
		return "board/info";
	}
	
	@GetMapping("/adopt")
	public String adopt(Model model) {

		List<AdoptVO> adoptList = adoptService.getList();
		
		model.addAttribute("adoptList",adoptList);
		
		System.out.println(adoptList);
		
		
		return "board/adopt";
	}

}
