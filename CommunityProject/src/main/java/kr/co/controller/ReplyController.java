package kr.co.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.beans.ReplyBean;
import kr.co.beans.UserBean;
import kr.co.service.BoardService;
import kr.co.service.ReplyService;

@Controller
@RequestMapping("/board")
public class ReplyController {
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private ReplyService replyService;
	
	@Resource(name = "loginUserBean")
	@Lazy
	private UserBean loginUserBean;
	
	@PostMapping("/reply_pro")
	public String write_pro(@Valid @ModelAttribute("replyContentBean") ReplyBean replyContentBean, BindingResult result,
							@RequestParam("content_idx") int content_idx,
							@RequestParam("board_info_idx") int board_info_idx,
							@RequestParam("page") int page, Model model) {
		
		replyContentBean.setReply_content_idx(content_idx);
		replyContentBean.setReply_board_idx(board_info_idx);
		model.addAttribute("page", page);
		
		if(result.hasErrors()) {
			return "board/read";
		}
		
		replyService.addReply(replyContentBean);
		
		return "board/reply_success";
	}
	
	@GetMapping("/reply_delete")
	public String delete(@RequestParam("reply_idx") int reply_idx,
						 @RequestParam("board_info_idx") int board_info_idx,
						 @RequestParam("content_idx") int content_idx, Model model) {
		
		replyService.deleteReply(reply_idx);
		
		model.addAttribute("board_info_idx", board_info_idx);
		model.addAttribute("content_idx", content_idx);
		
		return "board/reply_delete";
	}
}
