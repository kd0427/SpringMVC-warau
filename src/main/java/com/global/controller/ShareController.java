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

import com.global.service.ShareService;
import com.global.vo.ShareVO;



@Controller
@RequestMapping("/board")
public class ShareController {

	@Autowired
	private ShareService shareService;
	
	
	@GetMapping("/share/share")
	public String share(Model model) {

		List<ShareVO> shareList = shareService.getList();
		
		model.addAttribute("shareList",shareList);
		
		
		
		
		return "board/share/share";
	}

	
	//
		@GetMapping("/share/write")
		public String write(@ModelAttribute("writeShareVO") ShareVO writeShareVO) {
			
			return"board/share/write";
		}
		
		@PostMapping("/share/write_pro")
		public String write_pro(@Valid @ModelAttribute("writeShareVO") ShareVO writeShareVO, BindingResult result,HttpServletRequest request) {

			if(result.hasErrors()) {
				return "board/share/write";
			}
			
			shareService.addContentInfo(writeShareVO,request);
			
			
			return "board/share/write_success";
		}
		
		//
		@GetMapping("/share/read")
		public String read(@RequestParam("share_idx") int share_idx,
						   Model model) {
			
			ShareVO readShareVO = shareService.getContentInfo(share_idx);
			model.addAttribute("readShareVO",readShareVO);
			
			return "board/share/read";
		}
	}


