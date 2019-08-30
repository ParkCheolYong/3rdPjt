package com.bit.good.dao;

import java.util.List;


import com.bit.good.dto.NoticeDto;
import com.bit.good.dto.Paging;

public interface NoticeDao {
	public List<NoticeDto> listDao();
	public void noticeWriteDao(String id, String sub, String content);
	public NoticeDto viewDao(String sub);
	public void deleteDao(int idx);
	public void updateNotice(NoticeDto dto);
	public List<Paging> getTotalCount();
}
