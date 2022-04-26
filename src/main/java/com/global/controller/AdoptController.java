package com.global.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
	
	///
	@GetMapping("/write")
	public String write(@ModelAttribute("writeAdoptVO") AdoptVO writeAdoptVO) {
		
		return"board/adopt/write";
	}
	
	@PostMapping("/write_pro")
	public String write_pro(@Valid @ModelAttribute("writeAdoptVO") AdoptVO writeAdoptVO, BindingResult result,HttpServletRequest request) {

		if(result.hasErrors()) {
			return "board/adopt/write";
		}
		
		adoptService.addContentInfo(writeAdoptVO,request);
		
		
		return "board/adopt/write_success";
	}
	
	//
	@GetMapping("/read")
	public String read(@RequestParam("adopt_idx") int adopt_idx,
					   Model model) {
		
		AdoptVO readAdoptVO = adoptService.getContentInfo(adopt_idx);
		model.addAttribute("readAdoptVO",readAdoptVO);
		
		return "board/adopt/read";
	}
}
