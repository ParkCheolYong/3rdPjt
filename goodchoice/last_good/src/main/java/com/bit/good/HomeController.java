package com.bit.good;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
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
import com.bit.good.dto.NoticeDto;
import com.bit.good.dto.PageMaker;

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
	public String list(Model model, HttpServletRequest request) {
		//TODO : EVENT
		Edao dao=sqlSession.getMapper(Edao.class);
		// model.addAttribute("list", dao.listDao());		
		
		HashMap<String,Object> param = new HashMap<String,Object>();
		String page = request.getParameter("page");
		
		if(page == null) page = "1";	//
		param.put("page", page);
		
		model.addAttribute("list", sqlSession.selectList("selectEventList", param));
		sqlSession.selectList("selectEventList", param);
		
		model.addAttribute("page", page);

		/////////////////////
		
		model.addAttribute("total", dao.selectEventCount());
		
		
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
		//TODO : Notice
		NoticeDao dao=sqlSession.getMapper(NoticeDao.class);
		PageMaker pageMaker = new PageMaker();//
		
		String page = request.getParameter("page");
		if(page==null) {page="1";}
		int cPageNum = Integer.parseInt(page);//
		
		pageMaker.setTotalCount(dao.getTotalCount());//전체 게시글 개수를 지정한다
		pageMaker.setPage(cPageNum-1);//현재 페이지를 페이지 객체에 지정한다. -1을 해야 쿼리에서 사용할 수 있다.매퍼를 사용해서 전체 개수를 구해서 페이지 수를 구함
		pageMaker.setContentNum(10);//한 페이지에 몇개씩 게시글을 보여줄지 지정한다
		pageMaker.setCurrentBlock(cPageNum);//현재 페이지 블록이 몇번인지 현재 페이지 번호를 통해서 지정한다
		pageMaker.setLastBlock(pageMaker.getTotalCount());//마지막 블록 번호를 전체 게시글 수를 통해서 정한다.
		
		pageMaker.prevNext(cPageNum); //현재 페이지 번호로 화살표를 나타낼지 정한다
		pageMaker.setStartPage(pageMaker.getCurrentBlock()); //시작 페이지를 페이지 블록 번호로 정한다.
		pageMaker.setEndPage(pageMaker.getLastBlock(), pageMaker.getCurrentBlock());
		//마지막 페이지를 마지막페이지 블록과 현재 페이지 블록번호로 정한다.
		
//		List<NoticeDto> listDao = dao.listDao(pageMaker.getPage()*10);
		
//		request.setAttribute("list", listDao);
		request.setAttribute("page", pageMaker);

		model.addAttribute("list", sqlSession.selectList("com.bit.good.dao.NoticeDao.listDao", cPageNum));

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
	public String detailDao2(HttpServletRequest request,Model model, int no, String sub) {
		Idao dao2=sqlSession.getMapper(Idao.class);
		dao2.detailDao2(Integer.parseInt(request.getParameter("no")));
		model.addAttribute("detail", dao2.detailDao2(no));
		
		Idao dao3=sqlSession.getMapper(Idao.class);
		dao3.prev(Integer.parseInt(request.getParameter("no")), request.getParameter("sub"));
		model.addAttribute("prev", dao3.prev(no, sub));
		
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
	// PW CHAGE - DELETE
	@RequestMapping("/pwchange")
	public String pwchange(Model model) {
				
		PwChangeDao dao=sqlSession.getMapper(PwChangeDao.class);
		model.addAttribute("list", dao.pwchangeList());
				
		return "my/pwchange";
	}

	// DELETE
	@RequestMapping("deletepro")
	public String deletepro() {
		
		return "my/deletepro";
	}

}