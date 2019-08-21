package com.bit.good.dto;

public class InnoprojDto {

	private int no;
	private String sub, sub2, content, tag;
	
	public InnoprojDto() {
		// TODO Auto-generated constructor stub
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getSub() {
		return sub;
	}
	public void setSub(String sub) {
		this.sub = sub;
	}
	public String getSub2() {
		return sub2;
	}
	public void setSub2(String sub2) {
		this.sub2 = sub2;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public InnoprojDto(int no, String sub, String sub2, String content, String tag) {
		this.no = no;
		this.sub = sub;
		this.sub2 = sub2;
		this.content = content;
		this.tag = tag;
	}
	
	
	
}
