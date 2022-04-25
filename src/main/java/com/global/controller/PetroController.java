package com.global.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.global.service.PetroService;
import com.global.vo.PetroVO;

@Controller
@RequestMapping("/board")
public class PetroController {
	
	@Autowired
	private PetroService petroService;

	@GetMapping("/petro")
	public String petro(Model model) {
		
		//게시판 목록 가져오기
		List<PetroVO> petroContentList = petroService.getPetroList();
		model.addAttribute("petroContentList", petroContentList);
		
		return "board/petro/petro";
	}

}
