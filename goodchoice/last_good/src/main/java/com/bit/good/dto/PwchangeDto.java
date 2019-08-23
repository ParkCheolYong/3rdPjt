package com.bit.good.dto;

public class PwchangeDto {

	private int no, phone;
	private String email, nickname, name;
	public PwchangeDto() {
		// TODO Auto-generated constructor stub
	}
	
	
	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
	}


	public int getPhone() {
		return phone;
	}


	public void setPhone(int phone) {
		this.phone = phone;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getNickname() {
		return nickname;
	}


	public void setNickname(String nickname) {
		this.nickname = nickname;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}

	
	
	
	public PwchangeDto(int no, int phone, String email, String nickname, String name) {
		super();
		this.no = no;
		this.phone = phone;
		this.email = email;
		this.nickname = nickname;
		this.name = name;
	}
	
}
