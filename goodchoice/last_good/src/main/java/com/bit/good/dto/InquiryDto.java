package com.bit.good.dto;

public class InquiryDto {
	private int num;
	private String email, category, type, phone, contents;
	
	public InquiryDto() {
		// TODO Auto-generated constructor stub
	}
	
	public InquiryDto(int num, String email, String category, String type, String phone, String contents) {
		super();
		this.num = num;
		this.email = email;
		this.category = category;
		this.type = type;
		this.phone = phone;
		this.contents = contents;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}
	
}
