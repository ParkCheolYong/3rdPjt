package com.bit.good;

import java.io.IOException;
import java.io.PrintWriter;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.good.dao.JoinDao;

@Controller
public class JoinController {
	
	private static final Logger logger = LoggerFactory.getLogger(JoinController.class);
	
	@Autowired
	private SqlSession sqlSession;
	
	public static String email; 
	final int key = (int) (Math.random() * 100) + 1;
	
	
	@RequestMapping("/terms")
	public String terms() {
		return "join/terms";
	}

	
	@Autowired
	private JavaMailSender mailSender;

	// mailForm
	@RequestMapping(value = "/terms2")
	public String mailForm() {

		return "/join/terms2";
	}

	// mailSending 코드
	@RequestMapping(value = "/terms3")
	public String mailSending(HttpServletRequest request) {

		String setfrom = "bitgoodchoice@gmail.com";
		email = request.getParameter("email"); // 받는 사람 이메일

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper msg = new MimeMessageHelper(message, true, "UTF-8");

			msg.setFrom(setfrom); // 보내는사람 생략하거나 하면 정상작동을 안함
			msg.setTo(email); // 받는사람 이메일
			msg.setSubject("안녕하세요 요기어때입니다."); // 메일제목은 생략이 가능하다

			msg.setText("승인코드는 " + key + "입니다."); // 메일 내용

			mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
			System.out.println(key);
		}

		return "/join/terms3";
	}
	
	@RequestMapping(value = "/join")
	public String inemail(HttpServletRequest request) {
	  int temp=Integer.parseInt(request.getParameter("inemail"));
	  String re=null;
		if(key==temp) {
			re="/join/join";
		}else {
			re="/join/terms3-result";
		}
		return re;
	}
	@RequestMapping(value = "/joinResult", method = RequestMethod.POST)
	public String join(HttpServletRequest request) {
		JoinDao dao=sqlSession.getMapper(JoinDao.class);
		dao.join(request.getParameter("email"), request.getParameter("pw"), request.getParameter("nick"));
		
		return "redirect:login";
	}
	
	@RequestMapping(value ="/emailCheck",method = RequestMethod.POST)
	public void emailCheck(@RequestParam("email")String email,HttpServletResponse response,Model model) throws Exception {
		PrintWriter out=response.getWriter();
		JoinDao dao=sqlSession.getMapper(JoinDao.class);
		if(dao.emailCheck(email)==1) {
			out.print(false);
		}else {
			out.print(true);
		}
		
	}
	
}
