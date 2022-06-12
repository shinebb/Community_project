package kr.co.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import kr.co.beans.ContentBean;
import kr.co.beans.ReplyBean;
import kr.co.beans.UserBean;
import kr.co.dao.BoardDAO;
import kr.co.dao.ReplyDAO;

@Service
public class ReplyService {

	@Autowired
	private ReplyDAO replyDao;
	
	@Resource(name = "loginUserBean")
	@Lazy
	private UserBean loginUserBean;
	
	@Resource(name = "writeContentBean")
	@Lazy
	private ContentBean writeContentBean;
	
	public void addReply(ReplyBean replyContentBean) {
		
		replyContentBean.setReply_writer_name(loginUserBean.getUser_name());
		
		replyDao.addReply(replyContentBean);
		
	}
	
	public List<ReplyBean> getReplyList(int board_info_idx, int content_idx) {
		
		return replyDao.getReplyList(board_info_idx, content_idx);
	}
	
	public void deleteReply(int reply_idx) {
		replyDao.deleteReply(reply_idx);
	}
	
}
