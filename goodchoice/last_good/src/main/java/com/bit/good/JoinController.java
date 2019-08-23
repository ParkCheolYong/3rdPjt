package com.bit.good;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.good.dao.JoinDao;

@Controller
public class JoinController {
	
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

	// mailSending �ڵ�
	@RequestMapping(value = "/terms3")
	public String mailSending(HttpServletRequest request) {

		String setfrom = "bitgoodchoice@gmail.com";
		email = request.getParameter("email"); // �޴� ��� �̸���

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper msg = new MimeMessageHelper(message, true, "UTF-8");

			msg.setFrom(setfrom); // �����»�� �����ϰų� �ϸ� �����۵��� ����
			msg.setTo(email); // �޴»�� �̸���
			msg.setSubject("�ȳ��ϼ��� ����Դϴ�."); // ���������� ������ �����ϴ�

			msg.setText("�����ڵ�� " + key + "�Դϴ�."); // ���� ����

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
	
}