package com.bit.good.dto;

import java.util.Date;

public class NoticeDto {
	private int idx;
	private String id;
	private String sub;
	private String content;
	private Date nalja;
	//getter, setter, 기본생성자, 매개변수가 있는 생성자, toString()
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSub() {
		return sub;
	}
	public void setSub(String sub) {
		this.sub = sub;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getNalja() {
		return nalja;
	}
	public void setNalja(Date nalja) {
		this.nalja = nalja;
	}
	
	public NoticeDto() {}
	
	public NoticeDto(String id, String sub, String content) {
		super();
		this.id=id;
		this.sub=sub;
		this.content=content;
	}
	@Override
	public String toString() {
		return "NoticeDto [idx=" + idx + ", id=" + id + ", sub=" + sub + ", content=" + content + ", nalja=" + nalja
				+ "]";
	}
	
}
