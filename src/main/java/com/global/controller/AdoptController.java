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

import com.global.service.AdoptService;
import com.global.vo.AdoptVO;
import com.global.vo.PageVO;
import com.global.vo.UserVO;



@Controller
@RequestMapping("/board")
public class AdoptController {
	
	@Autowired
	private AdoptService adoptService;
	
	@Resource(name="loginUserVO")
	@Lazy
	private UserVO loginUserVO;
	
	
	@GetMapping("/adopt")
	public String adopt(@RequestParam(value="page", defaultValue = "1") int page,
						Model model) {

		List<AdoptVO> adoptList = adoptService.getList(page);
		model.addAttribute("adoptList",adoptList);
		System.out.println(adoptList);
		
		//페이징
		PageVO pageVO = adoptService.adoptWriteCnt(page);
		model.addAttribute("pageVO", pageVO);
		
		return "board/adopt/adopt2";
	}
	
	///
	@GetMapping("/adopt/write")
	public String write(@ModelAttribute("writeAdoptVO") AdoptVO writeAdoptVO) {
		
		return"board/adopt/write";
	}
	
	@PostMapping("/adopt/write_pro")
	public String write_pro(@Valid @ModelAttribute("writeAdoptVO") AdoptVO writeAdoptVO, BindingResult result) {

		if(result.hasErrors()) {
			return "board/adopt/write";
		}
		
		adoptService.adoptAddWrite(writeAdoptVO);
		
		
		return "board/adopt/write_success";
	}
	
	//글 읽기
	@GetMapping("/adopt/read")
	public String read(@RequestParam("adopt_idx") int adopt_idx,
					   Model model) {
		
		AdoptVO readAdoptVO = adoptService.getContentInfo(adopt_idx);
		model.addAttribute("readAdoptVO",readAdoptVO);
		
		model.addAttribute("adopt_idx", adopt_idx);
		model.addAttribute("loginUserVO", loginUserVO);
		
		return "board/adopt/read";
	}
	
	//글 삭제
		@GetMapping("/adopt/delete")
		public String delete(@RequestParam("adopt_idx") int adopt_idx,
							Model model) {
			
			adoptService.adoptWriteDelete(adopt_idx);
			model.addAttribute("adopt_idx", adopt_idx);
			
			return "board/adopt/delete";
		}
		
		//글 수정
		@GetMapping("/adopt/modify")
		public String modify(@RequestParam("adopt_idx") int adopt_idx,
							@ModelAttribute("adoptModifyVO") AdoptVO adoptModifyVO,
							Model model) {
			
			model.addAttribute("adopt_idx", adopt_idx); //(modify jsp)취소 버튼 
			
			AdoptVO adoptTempModifyVO = adoptService.getContentInfo(adopt_idx);
		
			//(modify.jsp-셋팅) 작성자, 작성날짜, 글 제목, 글 내용, 첨부이미지, 게시글 인덱스
			
			adoptModifyVO.setAdopt_writer(adoptTempModifyVO.getAdopt_writer());
			adoptModifyVO.setAdopt_regdate(adoptTempModifyVO.getAdopt_regdate());
			adoptModifyVO.setAdopt_title(adoptTempModifyVO.getAdopt_title());
			adoptModifyVO.setAdopt_content(adoptTempModifyVO.getAdopt_content());
			adoptModifyVO.setAdopt_img(adoptTempModifyVO.getAdopt_img());
			adoptModifyVO.setAdopt_idx(adopt_idx);
			
			
			return "board/adopt/modify";
		}
		
		@PostMapping("/adopt/modify_pro")
		public String modify_pro(@Valid @ModelAttribute("adoptModifyVO") AdoptVO adoptModifyVO, BindingResult result) {
			
			if(result.hasErrors()) {
				
				return "board/adopt/modify";
			}
			
			adoptService.adoptModifyInfo(adoptModifyVO);
			
			return "board/adopt/modify_success";
		}
		
		
		
		//작성 권한 처리
		@GetMapping("/adopt/not_writer")
		public String not_writer() {
			
			return "board/adopt/not_writer";
		}
		
		
		//채팅
		@GetMapping("/chat")
		public String chat(Model model) {
			String id = loginUserVO.getUser_id();
			model.addAttribute("chatId",id);
			return "board/chat/chat";
		}
		
}
