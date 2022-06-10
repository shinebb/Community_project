package kr.co.beans;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

//사용자 정보
public class UserBean {
	private int user_idx; //사용자 번호(PK)
	
	@Size(min=2, max=4)
	@Pattern(regexp = "[가-힣]*") //한글만 입력 가능
	private String user_name; //사용자 이름
	
	@Size(min=4, max=20)
	@Pattern(regexp = "[a-zA-Z0-9]*") //영어, 숫자만 입력 가능
	private String user_id; //사용자 아이디
	
	@Size(min=4, max=20)
	@Pattern(regexp = "[a-zA-Z0-9]*")
	private String user_pw; //사용자 비밀번호
	
	@Size(min=4, max=20)
	@Pattern(regexp = "[a-zA-Z0-9]*")
	private String user_pw2; //사용자 비밀번호 확인
	
	private boolean userIdExist; //아이디 중복확인 유효성검사 여부 확인
	
	private boolean userLogin; //로그인 여부 확인
	
	public UserBean() {
		this.userIdExist = false;
		this.userLogin = false;
	}
	
	public int getUser_idx() {
		return user_idx;
	}
	
	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}
	
	public String getUser_name() {
		return user_name;
	}
	
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	
	public String getUser_id() {
		return user_id;
	}
	
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	public String getUser_pw() {
		return user_pw;
	}
	
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_pw2() {
		return user_pw2;
	}

	public void setUser_pw2(String user_pw2) {
		this.user_pw2 = user_pw2;
	}

	public boolean isUserIdExist() {
		return userIdExist;
	}

	public void setUserIdExist(boolean userIdExist) {
		this.userIdExist = userIdExist;
	}

	public boolean isUserLogin() {
		return userLogin;
	}

	public void setUserLogin(boolean userLogin) {
		this.userLogin = userLogin;
	}
	
	
	
}
