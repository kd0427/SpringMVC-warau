package com.global.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
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

import com.global.service.InfoService;
import com.global.vo.AdoptVO;
import com.global.vo.InfoVO;
import com.global.vo.PageVO;
import com.global.vo.UserVO;

@Controller
@RequestMapping("/board")
public class InfoController {

	@Autowired
	private InfoService infoService;
	@Resource(name="loginUserVO")
	@Lazy
	private UserVO loginUserVO;
	
	@GetMapping("/info")
	public String info(@RequestParam(value="page", defaultValue = "1") int page,
						Model model) {

		List<InfoVO> infoList = infoService.getList(page);
		model.addAttribute("infoList",infoList);
		System.out.println(infoList);
		
		//페이징
		PageVO pageVO = infoService.infoWriteCnt(page);
		model.addAttribute("pageVO", pageVO);
		
		return "board/info/info2";
	}

	

	@GetMapping("/info/write")
	public String write(@ModelAttribute("writeInfoVO") InfoVO writeInfoVO) {

		return "board/info/write";
	}

	@PostMapping("/info/write_pro")
	public String write_pro(@Valid @ModelAttribute("writeInfoVO") InfoVO writeInfoVO, BindingResult result) {

		if (result.hasErrors()) {
			return "board/info/write";
		}

		infoService.infoAddWrite(writeInfoVO);

		return "board/info/write_success";

	}
	//글 읽기

	@GetMapping("/info/read")
	public String read(@RequestParam("info_idx") int info_idx,
					   Model model) {
		
		InfoVO readInfoVO = infoService.getContentInfo(info_idx);
		model.addAttribute("readInfoVO",readInfoVO);
		
		model.addAttribute("info_idx", info_idx);
		model.addAttribute("loginUserVO", loginUserVO);
		
		return "board/info/read";
	}

	//글 삭제
	@GetMapping("/info/delete")
	public String delete(@RequestParam("info_idx") int info_idx,
						Model model) {
		
		infoService.infoWriteDelete(info_idx);
		model.addAttribute("info_idx", info_idx);
		
		return "board/info/delete";
	}
	

	//글 수정
	@GetMapping("/info/modify")
	public String modify(@RequestParam("info_idx") int info_idx, @ModelAttribute("infoModifyVO") InfoVO infoModifyVO,
			Model model) {

		model.addAttribute("info_idx", info_idx); // (modify jsp)취소 버튼

		InfoVO infoTempModifyVO = infoService.getContentInfo(info_idx);

		// (modify.jsp-셋팅) 작성자, 작성날짜, 글 제목, 글 내용, 첨부이미지, 게시글 인덱스

		infoModifyVO.setInfo_writer(infoTempModifyVO.getInfo_writer());
		infoModifyVO.setInfo_regdate(infoTempModifyVO.getInfo_regdate());
		infoModifyVO.setInfo_title(infoTempModifyVO.getInfo_title());
		infoModifyVO.setInfo_content(infoTempModifyVO.getInfo_content());
		infoModifyVO.setInfo_img(infoTempModifyVO.getInfo_img());
		infoModifyVO.setInfo_idx(info_idx);
		
	
		return "board/info/modify";
	}

	@PostMapping("/info/modify_pro")
	public String modify_pro(@Valid @ModelAttribute("infoModifyVO") InfoVO infoModifyVO, BindingResult result) {

		if (result.hasErrors()) {

			return "board/info/modify";
		}

		infoService.infoModifyInfo(infoModifyVO);

		return "board/info/modify_success";
	}

	//작성 권한 처리
	@GetMapping("/info/not_writer")
	public String not_writer() {

		return "/board/info/not_writer";
	}
}