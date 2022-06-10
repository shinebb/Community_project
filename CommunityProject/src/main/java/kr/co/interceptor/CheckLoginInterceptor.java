package kr.co.interceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Lazy;
import org.springframework.web.servlet.HandlerInterceptor;

import kr.co.beans.UserBean;

public class CheckLoginInterceptor implements HandlerInterceptor {

	@Resource(name = "loginUserBean")
	@Lazy
	private UserBean loginUserBean;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		if(loginUserBean.isUserLogin() == false) {
			//로그인 상태가 아닐 때
			String contextPath = request.getContextPath();
			response.sendRedirect(contextPath + "/user/not_login");
			return false;
			//다음 단계로 넘어가지 않고 여기서 끝남
			
		}
		return true;
		//다음 단계 컨트롤러로 이동
	}
}
	
	
