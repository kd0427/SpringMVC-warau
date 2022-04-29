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

import com.global.service.InfoService;
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
		
		
		return "board/info/info";
	}
	@GetMapping("/info/write")
	public String write(@ModelAttribute("writeInfoVO") InfoVO writeInfoVO) {
		
		return"board/info/write";
	}
	
	@PostMapping("/info/write_pro")
	public String write_pro(@Valid @ModelAttribute("writeInfoVO") InfoVO writeInfoVO, BindingResult result,HttpServletRequest request) {

		if(result.hasErrors()) {
			return "board/adopt/write";
		}
		
		infoService.addContentInfo(writeInfoVO,request);
		
		
		return "board/info/write_success";
	

}
	@GetMapping("/info/read")
	public String read(@RequestParam("info_idx") int info_idx,
					   Model model) {
		
		InfoVO readInfoVO = infoService.getContentInfo(info_idx);
		model.addAttribute("readInfoVO",readInfoVO);
		
		return "board/info/read";
	}
}
