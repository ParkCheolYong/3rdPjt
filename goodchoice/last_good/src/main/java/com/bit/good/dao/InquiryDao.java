package com.bit.good.dao;

import java.util.ArrayList;

import com.bit.good.dto.InquiryDto;


public interface InquiryDao {
	public ArrayList<InquiryDto> listDao();
	public void inquiryWriteDao(String email, String category, String type, String phone, String contents);
	public InquiryDto viewDao(String type, String contents);
}
