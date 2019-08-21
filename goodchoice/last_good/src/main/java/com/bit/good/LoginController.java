package com.bit.good;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/login")
	public String login() {
		return "login/login";
	}
	
	
}
