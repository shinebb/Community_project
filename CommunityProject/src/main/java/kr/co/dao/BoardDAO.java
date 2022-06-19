package kr.co.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.beans.ContentBean;

@Repository
public class BoardDAO {
	
	@Autowired
	private	SqlSessionTemplate sqlSessionTemplate;
	
	public void addContentInfo(ContentBean writeContentBean) {
		int board_idx = writeContentBean.getContent_board_idx();
		
		if(board_idx == 1)	{
			sqlSessionTemplate.insert("board.addContentInfo", writeContentBean);
		} else if(board_idx == 2) {
			sqlSessionTemplate.insert("board.addContentInfo2", writeContentBean);
		} else if(board_idx == 3) {
			sqlSessionTemplate.insert("board.addContentInfo3", writeContentBean);
		} else {
			sqlSessionTemplate.insert("board.addContentInfo4", writeContentBean);
		}
	}
	
	public String getBoardInfoName(int board_info_idx) {
		return sqlSessionTemplate.selectOne("board.getBoardInfoName", board_info_idx);
	}
	
	public List<ContentBean> getContentList(int board_info_idx, RowBounds rowBounds) {
		
		if(board_info_idx == 1)	{
			return sqlSessionTemplate.selectList("board.getContentList", board_info_idx, rowBounds);
		} else if(board_info_idx == 2) {
			return sqlSessionTemplate.selectList("board.getContentList_b", board_info_idx, rowBounds);
		} else if(board_info_idx == 3) {
			return sqlSessionTemplate.selectList("board.getContentList_c", board_info_idx, rowBounds);
		} else {
			return sqlSessionTemplate.selectList("board.getContentList_d", board_info_idx, rowBounds);
		}
	}
	
	public ContentBean getContentInfo(int board_info_idx, int content_idx) {
		
		if(board_info_idx == 1)	{
			return sqlSessionTemplate.selectOne("board.getContentInfo", content_idx);
		} else if(board_info_idx == 2) {
			return sqlSessionTemplate.selectOne("board.getContentInfo_b", content_idx);
		} else if(board_info_idx == 3) {
			return sqlSessionTemplate.selectOne("board.getContentInfo_c", content_idx);
		} else {
			return sqlSessionTemplate.selectOne("board.getContentInfo_d", content_idx);
		}
		
	}
	
	public void modifyContentBeanInfo(int content_board_idx, ContentBean modifyContentBean) {
		
		if(content_board_idx == 1)	{
			sqlSessionTemplate.selectOne("board.modifyContentInfo", modifyContentBean);
		} else if(content_board_idx == 2) {
			sqlSessionTemplate.selectOne("board.modifyContentInfo_b", modifyContentBean);
		} else if(content_board_idx == 3) {
			sqlSessionTemplate.selectOne("board.modifyContentInfo_c", modifyContentBean);
		} else {
			sqlSessionTemplate.selectOne("board.modifyContentInfo_d", modifyContentBean);
		}
	
	}
	
	public void deleteContentInfo(int board_info_idx, int content_idx) {
		
		if(board_info_idx == 1)	{
			sqlSessionTemplate.delete("board.deleteContentInfo", content_idx);
		} else if(board_info_idx == 2) {
			sqlSessionTemplate.delete("board.deleteContentInfo_b", content_idx);
		} else if(board_info_idx == 3) {
			sqlSessionTemplate.delete("board.deleteContentInfo_c", content_idx);
		} else {
			sqlSessionTemplate.delete("board.deleteContentInfo_d", content_idx);
		}
	
	}
	
	public int getContentCnt(int content_board_idx) {
		
		if(content_board_idx == 1)	{
			return sqlSessionTemplate.selectOne("board.getContentCnt", content_board_idx);
		} else if(content_board_idx == 2) {
			return sqlSessionTemplate.selectOne("board.getContentCnt_b", content_board_idx);
		} else if(content_board_idx == 3) {
			return sqlSessionTemplate.selectOne("board.getContentCnt_c", content_board_idx);
		} else {
			return sqlSessionTemplate.selectOne("board.getContentCnt_d", content_board_idx);
		}

	}
}
