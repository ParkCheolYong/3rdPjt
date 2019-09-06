package com.bit.good.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bit.good.dto.NoticeDto;


public interface NoticeDao {
//	public List<NoticeDto> listDao();
	public void noticeWriteDao(String id, String sub, String content);
//	public NoticeDto viewDao(String sub);
	public void deleteDao(int idx);
//	public void updateNotice(NoticeDto dto);
	public int getTotalCount();
	
	//pagination
	public List<NoticeDto> listDao(@Param("page") int page);
	
}
