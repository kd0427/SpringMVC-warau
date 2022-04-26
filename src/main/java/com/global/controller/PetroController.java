package com.global.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	
	//글쓰기
	@GetMapping("/petro/write")
	public String write(@ModelAttribute("petroWriteVO") PetroVO petroWriteVO, Model model) {
		
		
		return "board/petro/write";
	}
	
	@PostMapping("/petro/write_pro") //작성하기
	public String write_pro(@Valid @ModelAttribute("petroWriteVO") PetroVO petroWriteVO, BindingResult result) {
		
		if(result.hasErrors()) { //제목, 내용 유효성검사
			
			return "board/petro/write";
		}
		
		petroService.petroAddWrite(petroWriteVO);
		
		
		return "board/petro/write_success";
	}
	
	@GetMapping("/petro/read")
	public String read(@RequestParam("petro_idx") int petro_idx,
						Model model) {
		
		
		PetroVO petroReadVO = petroService.petroWriteInfo(petro_idx);
		model.addAttribute("petroReadVO", petroReadVO);
		System.out.println("되냐");
		
		return "board/petro/read";
	}
	
	
}
