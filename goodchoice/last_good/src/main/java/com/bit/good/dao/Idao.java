package com.bit.good.dao;

import java.util.ArrayList;

import com.bit.good.dto.InnoprojDto;

public interface Idao {

	
	public ArrayList<InnoprojDto> listDao2();
	public void writeDao2(String sub,String sub2,String content,String tag);
	public InnoprojDto detailDao2(int no);
	public void deleteDao2(int no);
	
	
}
