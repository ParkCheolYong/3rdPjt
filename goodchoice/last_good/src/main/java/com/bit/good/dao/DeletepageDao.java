package com.bit.good.dao;

import java.util.ArrayList;

import com.bit.good.dto.DeletepageDto;

public interface DeletepageDao {

	public ArrayList<DeletepageDto> deletepageList();
	public int deletepro(String email,String pw);
	
	
}
