package com.bit.good.dao;

import java.util.ArrayList;

import com.bit.good.dto.FaqDto;

public interface IFaqDao {
	public ArrayList<FaqDto> listDao();
	public void faqWriteDao(String sub, String content);
	public FaqDto viewDao(String sub);
	public void deleteDao(int num);
}
