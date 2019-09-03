package com.bit.good;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.good.dao.DeletepageDao;

@Controller
public class DeleteController {

	
	@Autowired
	private SqlSession sqlSession;

	@RequestMapping("/deletepage")
	public String deletepage(Model model) {

		DeletepageDao dao = sqlSession.getMapper(DeletepageDao.class);
		model.addAttribute("list", dao.deletepageList());

		return "my/deletepage";
	}
	
	@RequestMapping(value = "/deletepro",method = RequestMethod.POST)
	public String deletpro(HttpServletRequest request,HttpSession session) {
		int result;
		DeletepageDao dao = sqlSession.getMapper(DeletepageDao.class);
		result=dao.deletepro(request.getParameter("email"),request.getParameter("pw"));
		System.out.println(result);
		if(result==0) {
			
			return "my/deletepage";
		}else {
			session.invalidate();
			return "main";
		}
			
		
	}

	
}