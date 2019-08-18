package com.bit.good;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JoinController {


	
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
}
