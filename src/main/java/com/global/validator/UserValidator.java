package com.global.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import com.global.vo.UserVO;



public class UserValidator implements Validator{

	
	
	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return UserVO.class.isAssignableFrom(clazz); //유효성 검사할 데이터 객체
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		
		UserVO userVO = (UserVO)target;
		
		String beanName = errors.getObjectName();
		
		if(beanName.equals("joinUserVO") || beanName.equals("modifyUserVO")) {
			
			if(userVO.getUser_pw().equals(userVO.getUser_pw2()) == false ) {
				errors.rejectValue("user_pw", "NotEquals");
				errors.rejectValue("user_pw2", "NotEquals");
			}
			
			if(beanName.equals("joinUserBean")) {
				
				if(userVO.isUserIdExist() == false) {
					errors.rejectValue("user_id", "DontCheckUserIdExist");
				}
			}
		}
		
		
	}

}
