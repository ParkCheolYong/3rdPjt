package com.bit.good.dao;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.bit.good.dto.EventDto;
import com.bit.good.dto.FaqDto;

public class FaqDao implements IFaqDao {
	
	JdbcTemplate template;
	
	
	@Autowired
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public FaqDao() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public ArrayList<FaqDto> listDao() {
		String query ="select * from faq order by no desc";
		ArrayList<FaqDto> dtos=(ArrayList<FaqDto>) template.query(query, new BeanPropertyRowMapper<FaqDto>(FaqDto.class));
		return dtos;
	}

	@Override
	public void writeDao(String sub, String content) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public FaqDto viewDao(String sub) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteDao(int num) {
		// TODO Auto-generated method stub
		
	}

}
