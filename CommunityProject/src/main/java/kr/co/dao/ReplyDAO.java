package kr.co.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.beans.ContentBean;
import kr.co.beans.ReplyBean;

@Repository
public class ReplyDAO {

	@Autowired
	private	SqlSessionTemplate sqlSessionTemplate;
	
	public void addReply(ReplyBean replyContentBean) {
		sqlSessionTemplate.insert("reply.addReply", replyContentBean);	
	}
	
	public List<ReplyBean> getReplyList(int board_info_idx, int content_idx) {
		
		if(board_info_idx == 1) {
			return sqlSessionTemplate.selectList("reply.getReplyList", content_idx);
		} else if (board_info_idx == 2) {
			return sqlSessionTemplate.selectList("reply.getReplyList_b", content_idx);
		} else if (board_info_idx == 3) {
			return sqlSessionTemplate.selectList("reply.getReplyList_c", content_idx);
		} else {
			return sqlSessionTemplate.selectList("reply.getReplyList_d", content_idx);
		}
	}
	
	public void deleteReply(int reply_idx) {
		sqlSessionTemplate.delete("reply.deleteReply", reply_idx);
	}
}
