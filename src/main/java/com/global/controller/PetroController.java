package com.global.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
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
import com.global.vo.UserVO;

@Controller
@RequestMapping("/board")
public class PetroController {
	
	@Autowired
	private PetroService petroService;
	
	@Resource(name="loginUserVO")
	@Lazy
	private UserVO loginUserVO;
	

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
	
	//글 읽기
	@GetMapping("/petro/read")
	public String read(@RequestParam("petro_idx") int petro_idx,
						Model model) {
		
		model.addAttribute("petro_idx", petro_idx); //수정, 삭제 눌렀을 때 어떤 글인지 알려고 
		
		PetroVO petroReadVO = petroService.petroWriteInfo(petro_idx);
		model.addAttribute("petroReadVO", petroReadVO);
		
		model.addAttribute("loginUserVO", loginUserVO);
		
		System.out.println("되냐");
		
		return "board/petro/read";
	}
	
	//글 삭제
	@GetMapping("/petro/delete")
	public String delete(@RequestParam("petro_idx") int petro_idx,
						Model model) {
		
		petroService.petroWriteDelete(petro_idx);
		model.addAttribute("petro_idx", petro_idx);
		
		return "board/petro/delete";
	}
	
	//글 수정
	@GetMapping("/petro/modify")
	public String modify(@RequestParam("petro_idx") int petro_idx,
						@ModelAttribute("petroModifyVO") PetroVO petroModifyVO,
						Model model) {
		
		model.addAttribute("petro_idx", petro_idx); //(modify jsp)취소 버튼 
		
		PetroVO petroTempModifyVO = petroService.petroWriteInfo(petro_idx);
	
		//(modify.jsp-셋팅) 작성자, 작성날짜, 글 제목, 글 내용, 첨부이미지, 게시글 인덱스
		
		petroModifyVO.setPetro_writer(petroTempModifyVO.getPetro_writer());
		petroModifyVO.setPetro_regdate(petroTempModifyVO.getPetro_regdate());
		petroModifyVO.setPetro_title(petroTempModifyVO.getPetro_title());
		petroModifyVO.setPetro_content(petroTempModifyVO.getPetro_content());
		petroModifyVO.setPetro_img(petroTempModifyVO.getPetro_img());
		petroModifyVO.setPetro_idx(petro_idx);
		
		
		return "board/petro/modify";
	}
	
	@PostMapping("/petro/modify_pro")
	public String modify_pro(@Valid @ModelAttribute("petroModifyVO") PetroVO petroModifyVO, BindingResult result) {
		
		if(result.hasErrors()) {
			
			return "board/petro/modify";
		}
		
		petroService.petroModifyInfo(petroModifyVO);
		
		return "board/petro/modify_success";
	}
	
	
	
	//작성 권한 처리
	@GetMapping("/petro/not_writer")
	public String not_writer() {
		
		return "/board/petro/not_writer";
	}
	
	
}
