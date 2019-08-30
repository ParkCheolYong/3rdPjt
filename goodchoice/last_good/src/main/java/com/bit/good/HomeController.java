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
import com.bit.good.dao.NoticeDao;
import com.bit.good.dao.Idao;
import com.bit.good.dao.MypageDao;
import com.bit.good.dao.PwChangeDao;
import com.bit.good.dto.Paging;

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
	@RequestMapping("/main")
	public String main() {
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
	
	@RequestMapping("/notice")
	public String notice(Model model, HttpServletRequest request) {
		NoticeDao dao=sqlSession.getMapper(NoticeDao.class);

		model.addAttribute("list",dao.listDao());
		model.addAttribute("totalCount",dao.getTotalCount());

		return "more/notice"; //페이지로 이동
	}
	
	@RequestMapping("/noticeAdd")
	public String noticeAdd() {

		return "more/noticeAdd"; //페이지로 이동
	}
	@RequestMapping(value = "/noticeWrite",method = RequestMethod.POST)
	public String noticeWrite(HttpServletRequest request, Model model) {
		NoticeDao dao =sqlSession.getMapper(NoticeDao.class);
		dao.noticeWriteDao(request.getParameter("id"), request.getParameter("sub"), request.getParameter("content"));
		
		return "redirect:notice";
	}
	@RequestMapping("/noticeDelete")
	public String noticeDelete(HttpServletRequest request, Model model) {
		NoticeDao dao =sqlSession.getMapper(NoticeDao.class);
		dao.deleteDao(Integer.parseInt(request.getParameter("idx")));
		return "redirect:notice";
	}
	

	// innoproject
	@RequestMapping("/innoproj")
	public String list2(Model model) {
		
		Idao dao2=sqlSession.getMapper(Idao.class);
		model.addAttribute("list", dao2.listDao2());
		
		return "more/innoproj";
	}
	
	@RequestMapping("innoprojAdd")
	public String innoprojAdd() {
		
		return "more/innoprojAdd";
	}

	@RequestMapping(value = "/write2",method = RequestMethod.POST)
	public String write2(HttpServletRequest request, Model model) {
		
		Idao dao2 =sqlSession.getMapper(Idao.class);
		dao2.writeDao2(request.getParameter("sub"), request.getParameter("sub2"), request.getParameter("content"), request.getParameter("tag"));
				
		return "redirect:innoproj";
	}
	
	@RequestMapping("/delete2")
	public String delete2(HttpServletRequest request, Model model) {
		Idao dao2 =sqlSession.getMapper(Idao.class);
		dao2.deleteDao2(Integer.parseInt(request.getParameter("no")));
		return "redirect:innoproj";
	}
	
	@RequestMapping("/innoprojDetail")
	public String detailDao2(HttpServletRequest request,Model model, int no) {
		Idao dao2=sqlSession.getMapper(Idao.class);
		dao2.detailDao2(Integer.parseInt(request.getParameter("no")));
		model.addAttribute("detail", dao2.detailDao2(no));
		
		
		return "more/innoprojDetail";
	}
	
	
	// MYPAGE 
	@RequestMapping("/mypage")
	public String mypage(Model model) {
		
		MypageDao dao=sqlSession.getMapper(MypageDao.class);
		model.addAttribute("list", dao.mypageList());
		
		return "my/mypage";
	}
	
	// PW CHAGE 
	@RequestMapping("/pwchange")
	public String pwchange(Model model) {
				
		PwChangeDao dao=sqlSession.getMapper(PwChangeDao.class);
		model.addAttribute("list", dao.pwchangeList());
				
		return "my/pwchange";
	}
	
	// 
	@RequestMapping("deletepro")
	public String deletepro() {
		
		return "my/deletepro";
	}

}