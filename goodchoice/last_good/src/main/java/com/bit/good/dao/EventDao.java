package com.bit.good.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.PreparedStatementSetter;

import com.bit.good.dto.EventDto;

public class EventDao implements Edao {

	
	JdbcTemplate template;
	
	
	@Autowired
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	public EventDao() {
		// TODO Auto-generated constructor stub
	}
	
	
	@Override
	public ArrayList<EventDto> listDao() {
		String query ="select * from event order by no desc";
		ArrayList<EventDto> dtos=(ArrayList<EventDto>) template.query(query, new BeanPropertyRowMapper<EventDto>(EventDto.class));
		return dtos;
	}

	@Override
	public void writeDao(String sub, String startdate, String enddate, String thumbnail, String bodyimage) {
		
		this.template.update(new PreparedStatementCreator() {
			
			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {

				String query="insert into event values(event_seq.nextval,?,?,?,?,?)";
				PreparedStatement pstmt=con.prepareStatement(query);
				pstmt.setString(1, sub);
				pstmt.setString(2, startdate);
				pstmt.setString(3, enddate);
				pstmt.setString(4, thumbnail);
				pstmt.setString(5, bodyimage);
				return pstmt;
			}
		});
		
	}

	@Override
	public EventDto viewDao(int no) {
	System.out.println("viewDao()");
		
		String query = "select * from event where no = " + no;
		return template.queryForObject(query, new BeanPropertyRowMapper<EventDto>(EventDto.class));
	}

	@Override
	public void deleteDao(int no) {
	System.out.println("deleteDao()");
		
		String query = "delete from event where no = ?";
		this.template.update(query, new PreparedStatementSetter() {
			
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setInt(1, no);
			}
		});
		
	}

}
