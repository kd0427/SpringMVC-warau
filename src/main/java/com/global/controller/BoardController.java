package com.global.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardController {

	@GetMapping("/boast")
	public String boast() {
		
		return "board/boast";
	}
	
	@GetMapping("/share")
	public String share() {
		
		return "board/share";
	}
	
	@GetMapping("/info")
	public String info() {
		
		return "board/info";
	}
	
	@GetMapping("/adopt")
	public String adopt() {
		
		return "board/adopt";
	}

}
