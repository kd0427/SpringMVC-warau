package com.global.app;


import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.global.service.HomeService;

import com.global.vo.PetroVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@Autowired
	private HomeService homeService;
	
	@GetMapping("/")
	public String home(Locale locale, Model model) {
		
		// 펫트로꺼
		List<PetroVO> p_list = homeService.petroHomeList();
		model.addAttribute("p_list", p_list);
		

		
		
		return "home";
	}
	
}
