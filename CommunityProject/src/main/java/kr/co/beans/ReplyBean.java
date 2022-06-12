package kr.co.beans;

import javax.validation.constraints.NotBlank;

//댓글관리
public class ReplyBean {

	private int reply_idx; //댓글 번호
	private String reply_writer_name; //댓글 작성자 이름
	
	@NotBlank
	private String reply_text; //댓글 내용
	
	private int reply_board_idx;	//게시판 번호(FK)
	private int reply_content_idx; //게시글 번호(FK)
	private String reply_date;	//댓글 작성날짜
	
	public int getReply_idx() {
		return reply_idx;
	}
	
	public void setReply_idx(int reply_idx) {
		this.reply_idx = reply_idx;
	}
	
	public String getReply_writer_name() {
		return reply_writer_name;
	}
	
	public void setReply_writer_name(String reply_writer_name) {
		this.reply_writer_name = reply_writer_name;
	}
	
	public String getReply_date() {
		return reply_date;
	}
	
	public void setReply_date(String reply_date) {
		this.reply_date = reply_date;
	}
	
	public String getReply_text() {
		return reply_text;
	}
	
	public void setReply_text(String reply_text) {
		this.reply_text = reply_text;
	}

	public int getReply_board_idx() {
		return reply_board_idx;
	}

	public void setReply_board_idx(int reply_board_idx) {
		this.reply_board_idx = reply_board_idx;
	}

	public int getReply_content_idx() {
		return reply_content_idx;
	}

	public void setReply_content_idx(int reply_content_idx) {
		this.reply_content_idx = reply_content_idx;
	}

	
}
