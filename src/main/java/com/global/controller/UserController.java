package com.global.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.global.service.UserService;
import com.global.validator.UserValidator;
import com.global.vo.UserVO;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	
	@Resource(name="loginUserVO")
	@Lazy
	private UserVO loginUserVO;
	
	@GetMapping("/login")
	public String user_login(@ModelAttribute("tempLoginUserVO") UserVO tempLoginUserVO,
							 @RequestParam(value="fail", defaultValue="false") boolean fail,
							 Model model) {
		
		model.addAttribute("fail",fail);
		return "user/login";
	}
	
	@PostMapping("/login_pro")
	public String login_pro(@Valid @ModelAttribute("tempLoginUserVO") UserVO tempLoginUserVO, BindingResult result) {
		
		if(result.hasErrors()) {
			return "/user/login";
		}
		
		userService.getLoginUserInfo(tempLoginUserVO);
		
		if(loginUserVO.isUserLogin()==true) {
			return "user/login_success";
		}else {
			return "user/login_fail";
		}
		
		
	}
	
	@GetMapping("/join")
	public String user_join(@ModelAttribute("joinUserVO") UserVO joinUserVO) {
		
		return "user/join";
	}
	
	//회원가입
	@PostMapping("/join_pro")
	public String join_pro(@Valid @ModelAttribute("joinUserVO") UserVO joinUserVO, BindingResult result) {
	
		if(result.hasErrors()) {
			return "user/join"; 
		} 
		
		userService.addUserInfo(joinUserVO);
		
		return "user/join_success";
	}
	
	//회원정보 수정페이지로 이동
	@GetMapping("/modify")
	public String user_modify(@ModelAttribute("modifyUserVO") UserVO modifyUserVO) {
		
		userService.getModifyUserInfo(modifyUserVO);
		
		return "user/modify";
	}
	
	//회원정보 수정
	@PostMapping("/modify_pro")
	public String user_modify_pro(@Valid @ModelAttribute("modifyUserVO") UserVO modifyUserVO, BindingResult result) {
		
		if(result.hasErrors()) {
			return "user/modify";
		}
		
		userService.modifyUserInfo(modifyUserVO);
		
		return "user/modify_success";
	}
	
	@GetMapping("/logout")
	public String user_logout() {
		
		loginUserVO.setUserLogin(false);
		
		return "user/logout";
	}
	
	@GetMapping("/not_login")
	public String not_login() {
		
		return "user/not_login";
	}
	
	@InitBinder
	public void intitBinder(WebDataBinder binder) {
		UserValidator validator1 = new UserValidator();
		binder.addValidators(validator1);
	}
}
