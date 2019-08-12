package com.bit.good.dao;

import java.util.ArrayList;

import com.bit.good.dto.EventDto;

public interface Edao {

	
	public ArrayList<EventDto> listDao();
	public void writeDao(String sub,String startdate,String enddate,String thumbnail,String bodyimage);
	public EventDto viewDao(int no);
	public void deleteDao(int no);
	
	
}
