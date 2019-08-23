package com.bit.good.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.bit.good.dto.FaqDto;
import com.bit.good.dto.NoticeDto;

public interface NoticeDao {
	public List<NoticeDto> listDao();
	public void noticeWriteDao(NoticeDto vo);
	public NoticeDto viewDao(String sub);
	public void deleteDao(int num);
	public void updateNotice(NoticeDto dto);
}
