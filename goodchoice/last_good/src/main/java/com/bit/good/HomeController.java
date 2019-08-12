package com.bit.good;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.good.dao.Edao;
import com.bit.good.dao.IFaqDao;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		
		return "main";
	}
	@RequestMapping("/faq")
	public String faq(Model model) {
		IFaqDao dao=sqlSession.getMapper(IFaqDao.class);
		model.addAttribute("list",dao.listDao());
		
		return "more/faq";
	}
	@RequestMapping("faqAdd")
	public String faqAdd() {
		
		return "more/faqAdd";
	}
	@RequestMapping(value = "/faqWrite",method = RequestMethod.POST)
	public String faqWrite(HttpServletRequest request, Model model) {
		IFaqDao dao =sqlSession.getMapper(IFaqDao.class);
		dao.faqWriteDao(request.getParameter("sub"), request.getParameter("content"));
		
		
		return "redirect:faq";
	}
	@RequestMapping("/faqDelete")
	public String faqDelete(HttpServletRequest request, Model model) {
		IFaqDao dao =sqlSession.getMapper(IFaqDao.class);
		dao.deleteDao(Integer.parseInt(request.getParameter("num")));
		return "redirect:faq";
	}
	
	@RequestMapping("/event")
	public String list(Model model) {
		
		Edao dao=sqlSession.getMapper(Edao.class);
		model.addAttribute("list", dao.listDao());
		
		return "more/event";
	}
	
	@RequestMapping("eventAdd")
	public String eventAdd() {
		
		return "more/eventAdd";
	}
	
	@RequestMapping(value = "/write",method = RequestMethod.POST)
	public String write(HttpServletRequest request, Model model) {
		System.out.println("");
		Edao dao =sqlSession.getMapper(Edao.class);
		dao.writeDao(request.getParameter("sub"), request.getParameter("startdate"), request.getParameter("enddate"), request.getParameter("thumbnail"), request.getParameter("bodyimage"));
		
		
		return "redirect:event";
	}

	
	@RequestMapping("/detail")
	public String detailDao(HttpServletRequest request,Model model, int no) {
		Edao dao=sqlSession.getMapper(Edao.class);
		dao.detailDao(Integer.parseInt(request.getParameter("no")));
		model.addAttribute("detail", dao.detailDao(no));
		
		
		return "more/detail";
	}
	
	@RequestMapping("/delete")
	public String delete(HttpServletRequest request, Model model) {
		Edao dao =sqlSession.getMapper(Edao.class);
		dao.deleteDao(Integer.parseInt(request.getParameter("no")));
		return "redirect:event";
	}
}
