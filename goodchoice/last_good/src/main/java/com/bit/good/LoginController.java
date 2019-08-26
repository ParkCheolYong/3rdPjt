package com.bit.good;

import java.sql.SQLException;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.good.dao.LoginDao;
import com.bit.good.dto.JoinDto;

@Controller
public class LoginController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/login")
	public String login() {
		return "login/login";
	}
	
	@RequestMapping(value = "/loginUser" , method=RequestMethod.POST)
	public String loginUser(@RequestParam("email") String email,@RequestParam("pw") String pw, HttpSession session, Model model) {
		JoinDto dto=new JoinDto();
		LoginDao dao=sqlSession.getMapper(LoginDao.class);
		dto=dao.loginUser(email, pw);
		
		if(dto==null) {
			
			return "login/login";
		}else {
			session.setAttribute("nick", dto.getNick());
			return "main";
		}

	}
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:main";
	}
	
}
