package kr.co.controller;

import java.util.List;

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

import kr.co.beans.ContentBean;
import kr.co.beans.PageBean;
import kr.co.beans.ReplyBean;
import kr.co.beans.UserBean;
import kr.co.service.BoardService;
import kr.co.service.ReplyService;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private BoardService boardService;

	@Autowired
	private ReplyService replyService;

	@Resource(name = "loginUserBean")
	@Lazy
	private UserBean loginUserBean;

	@Resource(name = "replyContentBean")
	@Lazy
	private ReplyBean replyContentBean;

	@GetMapping("/main")
	public String main(@RequestParam("board_info_idx") int board_info_idx,
			@RequestParam(value = "page", defaultValue = "1") int page, Model model) {

		model.addAttribute("board_info_idx", board_info_idx);

		String boardInfoName = boardService.getBoardInfoName(board_info_idx);
		model.addAttribute("boardInfoName", boardInfoName);

		List<ContentBean> contentList = boardService.getContentList(board_info_idx, page);
		model.addAttribute("contentList", contentList);

		PageBean pageBean = boardService.getContentCnt(board_info_idx, page);
		model.addAttribute("pageBean", pageBean);

		model.addAttribute("page", page);

		return "board/main";
	}

	@GetMapping("/read")
	public String read(@ModelAttribute("replyContentBean") ReplyBean replyContentBean,
			@ModelAttribute("writeContentBean") ContentBean writeContentBean,
			@RequestParam("board_info_idx") int board_info_idx, 
			@RequestParam("content_idx") int content_idx,
			@RequestParam("page") int page, Model model) {

		model.addAttribute("board_info_idx", board_info_idx);
		model.addAttribute("content_idx", content_idx);
		


//		replyContentBean.setReply_content_idx(content_idx);
//		replyContentBean.setReply_board_idx(board_info_idx);

		ContentBean readContentBean = boardService.getContentInfo(board_info_idx, content_idx);
		model.addAttribute("readContentBean", readContentBean);

		model.addAttribute("loginUserBean", loginUserBean);
		model.addAttribute("page", page);

		model.addAttribute("writeContentBean", writeContentBean);
		model.addAttribute("replyContentBean", replyContentBean);

		
		List<ReplyBean> replyList = replyService.getReplyList(board_info_idx, content_idx);
		model.addAttribute("replyList", replyList);
		

		return "board/read";
	}

	@GetMapping("/write")
	public String write(@ModelAttribute("writeContentBean") ContentBean writeContentBean,
			@RequestParam("board_info_idx") int board_info_idx) {
		writeContentBean.setContent_board_idx(board_info_idx);

		return "board/write";
	}

	@PostMapping("/write_pro")
	public String write_pro(@Valid @ModelAttribute("writeContentBean") ContentBean writeContentBean,
			BindingResult result) {
		if (result.hasErrors()) {
			return "board/write";
		}

		boardService.addContentInfo(writeContentBean);

		return "board/write_success";
	}

	@GetMapping("/modify")
	public String modify(@RequestParam("board_info_idx") int board_info_idx,
			@RequestParam("content_idx") int content_idx,
			@ModelAttribute("modifyContentBean") ContentBean modifyContentBean, @RequestParam("page") int page,
			Model model) {

		model.addAttribute("board_info_idx", board_info_idx);
		model.addAttribute("content_idx", content_idx);
		model.addAttribute("page", page);

		ContentBean tempContentBean = boardService.getContentInfo(board_info_idx, content_idx);

		modifyContentBean.setContent_writer_name(tempContentBean.getContent_writer_name());
		modifyContentBean.setContent_date(tempContentBean.getContent_date());
		modifyContentBean.setContent_subject(tempContentBean.getContent_subject());
		modifyContentBean.setContent_text(tempContentBean.getContent_text());
		modifyContentBean.setContent_file(tempContentBean.getContent_file());
		modifyContentBean.setContent_writer_idx(tempContentBean.getContent_writer_idx());
		modifyContentBean.setContent_board_idx(board_info_idx);
		modifyContentBean.setContent_idx(content_idx);

		return "board/modify";
	}

	@PostMapping("/modify_pro")
	public String modify_pro(@Valid @ModelAttribute("modifyContentBean") ContentBean modifyContentBean,
			BindingResult result, @RequestParam("content_board_idx") int content_board_idx,
			@RequestParam("page") int page, Model model) {

		model.addAttribute("page", page);

		if (result.hasErrors()) {
			return "board/modify";
		}

		boardService.modifyContentInfo(content_board_idx, modifyContentBean);

		return "board/modify_success";
	}

	@GetMapping("/delete")
	public String delete(@RequestParam("board_info_idx") int board_info_idx,
			@RequestParam("content_idx") int content_idx, Model model) {

		boardService.deleteContentInfo(board_info_idx, content_idx);
		
		model.addAttribute("board_info_idx", board_info_idx);
		
		
		return "board/delete";
	}

	@GetMapping("/not_writer")
	public String not_writer() {

		return "board/not_writer";
	}
}
