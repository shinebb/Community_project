package kr.co.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.beans.UserBean;

@Repository
public class UserDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public String checkUserIdExist(String user_id) {
		return sqlSessionTemplate.selectOne("user.checkUserIdExist", user_id);
	}
	
	public void addUserInfo(UserBean joinUserBean) {
		sqlSessionTemplate.insert("user.addUserInfo", joinUserBean);
	}
	
	public UserBean getLoginUserInfo(UserBean tempLoginUserBean) {
		return sqlSessionTemplate.selectOne("user.getLoginUserInfo", tempLoginUserBean);
	}
	
	public UserBean getModifyUserInfo(int user_idx) {
		return sqlSessionTemplate.selectOne("getModifyUserInfo", user_idx);
	}
	
	public void modifyUserInfo(UserBean modifyUserBean) {
		sqlSessionTemplate.update("user.modifyUserInfo", modifyUserBean);
	}
}
