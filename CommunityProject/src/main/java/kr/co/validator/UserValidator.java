package kr.co.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import kr.co.beans.UserBean;

public class UserValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// 정해져있는 메소드 리턴타입
		return UserBean.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		UserBean userBean = (UserBean)target;
		
		String beanName = errors.getObjectName();
		//System.out.println(beanName);
		
		if(beanName.equals("joinUserBean") || beanName.equals("modifyUserBean")) {
			if(userBean.getUser_pw().equals(userBean.getUser_pw2()) == false) {
				errors.rejectValue("user_pw", "NotEquals");
				errors.rejectValue("user_pw2", "NotEquals");
			}
		}
		if(beanName.equals("joinUserBean")) {
		
			if(userBean.isUserIdExist() == false) {
				errors.rejectValue("user_id", "DontcheckUserIdExist");
			}
		}
	}

}
