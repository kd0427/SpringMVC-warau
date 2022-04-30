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

import com.global.service.ShareService;
import com.global.vo.AdoptVO;
import com.global.vo.ShareVO;
import com.global.vo.UserVO;



@Controller
@RequestMapping("/board")
public class ShareController {
	
	@Autowired
	private ShareService shareService;
	
	@Resource(name="loginUserVO")
	@Lazy
	private UserVO loginUserVO;
	
	
	@GetMapping("/share")
	public String share(Model model) {

		List<ShareVO> shareList = shareService.getList();
		
		model.addAttribute("shareList",shareList);
		
		System.out.println(shareList);
		
		
		return "board/share/share";
	}
	
	///
	@GetMapping("/share/write")
	public String write(@ModelAttribute("writeShareVO") ShareVO writeShareVO) {
		
		return"board/share/write";
	}
	
	@PostMapping("/share/write_pro")
	public String write_pro(@Valid @ModelAttribute("writeShareVO") ShareVO writeShareVO, BindingResult result) {

		if(result.hasErrors()) {
			return "board/share/write";
		}
		
		shareService.addContentInfo(writeShareVO);
		
		
		return "board/share/write_success";
	}
	
	//글 읽기
	@GetMapping("/share/read")
	public String read(@RequestParam("share_idx") int share_idx,
					   Model model) {
		model.addAttribute("share_idx", share_idx);
		
		ShareVO readShareVO = shareService.getContentInfo(share_idx);
		model.addAttribute("readShareVO", readShareVO);
		model.addAttribute("loginUserVO", loginUserVO);
		
		System.out.println("나와라");
		
		return "board/share/read";
	}
	
	
	
	//글 삭제
		@GetMapping("/share/delete")
		public String delete(@RequestParam("share_idx") int share_idx,
							Model model) {
			
			shareService.shareWriteDelete(share_idx);
			model.addAttribute("share_idx", share_idx);
			
			return "board/share/delete";
		}
		
		//글 수정
		@GetMapping("/share/modify")
		public String modify(@RequestParam("share_idx") int share_idx,
							@ModelAttribute("shareModifyVO") ShareVO shareModifyVO,
							Model model) {
			
			model.addAttribute("share_idx", share_idx); //(modify jsp)취소 버튼 
			
			ShareVO shareTempModifyVO = shareService.getContentInfo(share_idx);
		
			//(modify.jsp-셋팅) 작성자, 작성날짜, 글 제목, 글 내용, 첨부이미지, 게시글 인덱스
			
			shareModifyVO.setShare_writer(shareTempModifyVO.getShare_writer());
			shareModifyVO.setShare_regdate(shareTempModifyVO.getShare_regdate());
			shareModifyVO.setShare_title(shareTempModifyVO.getShare_title());
			shareModifyVO.setShare_content(shareTempModifyVO.getShare_content());
			shareModifyVO.setShare_img(shareTempModifyVO.getShare_img());
			shareModifyVO.setShare_idx(share_idx);
			
			
			return "board/share/modify";
		}
		
		@PostMapping("/share/modify_pro")
		public String modify_pro(@Valid @ModelAttribute("shareModifyVO") ShareVO shareModifyVO, BindingResult result) {
			
			if(result.hasErrors()) {
				
				return "board/share/modify";
			}
			
			shareService.shareModifyInfo(shareModifyVO);
			
			return "board/share/modify_success";
		}
		
		
		
		//작성 권한 처리
		@GetMapping("/share/not_writer")
		public String not_writer() {
			
			return "/board/share/not_writer";
		}
		
}
