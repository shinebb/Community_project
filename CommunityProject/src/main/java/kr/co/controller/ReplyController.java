package kr.co.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;

import kr.co.beans.UserBean;
import kr.co.service.BoardService;

@Controller
public class ReplyController {
	
	@Autowired
	private BoardService boardService;
	
	@Resource(name = "loginUserBean")
	@Lazy
	private UserBean loginUserBean;
	
}
