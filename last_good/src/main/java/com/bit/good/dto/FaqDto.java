package com.bit.good.dto;

public class FaqDto {
	private int num;
	private String sub,content,type;
	
	public FaqDto() {
		// TODO Auto-generated constructor stub
	}
	
	public FaqDto(int num, String sub, String content, String type) {
		super();
		this.num = num;
		this.sub = sub;
		this.content = content;
		this.type = type;
	}

	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	
}
