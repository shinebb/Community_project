package kr.co.beans;

import javax.validation.constraints.NotBlank;

import org.springframework.web.multipart.MultipartFile;

//게시글 정보
public class ContentBean {
	private int content_idx; //게시글 번호(PK)
	
	@NotBlank
	private String content_subject; //게시글 제목
	
	@NotBlank
	private String content_text; //게시글 내용
	
	private MultipartFile upload_file; //클라이언트가 보낸 첨부파일 데이터
	
	private String content_file; //첨부파일
	private int content_writer_idx; //게시글 작성자 번호(FK)
	private int content_board_idx;	//게시판 번호(FK)
	private String content_date;	//작성날짜
	
	private String content_writer_name; //글작성자(user_table과의 조인)
	
	public int getContent_idx() {
		return content_idx;
	}
	
	public void setContent_idx(int content_idx) {
		this.content_idx = content_idx;
	}
	
	public String getContent_subject() {
		return content_subject;
	}
	
	public void setContent_subject(String content_subject) {
		this.content_subject = content_subject;
	}
	
	public String getContent_text() {
		return content_text;
	}
	
	public void setContent_text(String content_text) {
		this.content_text = content_text;
	}
	
	public String getContent_file() {
		return content_file;
	}
	
	public void setContent_file(String content_file) {
		this.content_file = content_file;
	}
	
	public int getContent_writer_idx() {
		return content_writer_idx;
	}
	
	public void setContent_writer_idx(int content_writer_idx) {
		this.content_writer_idx = content_writer_idx;
	}
	
	public int getContent_board_idx() {
		return content_board_idx;
	}
	
	public void setContent_board_idx(int content_board_idx) {
		this.content_board_idx = content_board_idx;
	}
	
	public String getContent_date() {
		return content_date;
	}
	
	public void setContent_date(String content_date) {
		this.content_date = content_date;
	}

	public MultipartFile getUpload_file() {
		return upload_file;
	}

	public void setUpload_file(MultipartFile upload_file) {
		this.upload_file = upload_file;
	}

	public String getContent_writer_name() {
		return content_writer_name;
	}

	public void setContent_writer_name(String content_writer_name) {
		this.content_writer_name = content_writer_name;
	}
	
}
