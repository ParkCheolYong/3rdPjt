package com.bit.good.dto;

public class JoinDto {

	
	private String email;
	private int pw,phone;
	private String nick;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getPw() {
		return pw;
	}
	public void setPw(int pw) {
		this.pw = pw;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	
	public JoinDto(String email, int pw, int phone, String nick) {
		super();
		this.email = email;
		this.pw = pw;
		this.phone = phone;
		this.nick = nick;
	}
	
}
