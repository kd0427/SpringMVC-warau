package com.global.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/intro")
public class IntroController {
	
	@GetMapping("/puppy")
	public String puppy() {
		return "intro/puppy";
	}
	
	@GetMapping("/cat")
	public String cat() {
		return "intro/cat";
	}
	
	@GetMapping("/reptile")
	public String reptile() {
		return "intro/reptile";
	}
	
	@GetMapping("/birds")
	public String birds() {
		return "intro/birds";
	}
	
	@GetMapping("/etc")
	public String etc() {
		return "intro/etc";
	}
}
