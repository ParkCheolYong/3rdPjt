package com.bit.good.dto;

public class InnoprojDto {

	private int no, prev_no, next_no;
	private String sub, sub2, content, tag, prev_sub, next_sub;
	
	public int getPrev_no() {
		return prev_no;
	}

	public void setPrev_no(int prev_no) {
		this.prev_no = prev_no;
	}

	public int getNext_no() {
		return next_no;
	}

	public void setNext_no(int next_no) {
		this.next_no = next_no;
	}

	public String getPrev_sub() {
		return prev_sub;
	}

	public void setPrev_sub(String prev_sub) {
		this.prev_sub = prev_sub;
	}

	public String getNext_sub() {
		return next_sub;
	}

	public void setNext_sub(String next_sub) {
		this.next_sub = next_sub;
	}

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
