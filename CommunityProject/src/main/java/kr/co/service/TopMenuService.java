package kr.co.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.beans.BoardInfoBean;
import kr.co.dao.TopMenuDAO;

@Service
public class TopMenuService {
	
	@Autowired
	private TopMenuDAO topMenuDao;
	
	public List<BoardInfoBean> getTopMenuList() {
		List<BoardInfoBean> topMenuList = topMenuDao.getTopMenuList();
		return topMenuList;
	}
}
