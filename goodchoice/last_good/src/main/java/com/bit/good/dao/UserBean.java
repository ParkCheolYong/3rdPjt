package com.bit.good.dao;


// �������� ������ ����ϴ� Ŭ���� - DTO
public class UserBean 
{
	private String email;
	private String pw;
	private String nick;
	private int phone;

	
	public String getEmail() {return email;}
	public void setEmail(String email) {this.email = email;}
	
	public String getPw() {return pw;}
	public void setPw(String pw) {this.pw = pw;}
	
	public String getNick() {return nick;}
	public void setNick(String nick) {this.nick = nick;}
	
	public int getPhone() {return phone;}
	public void setPhone(int phone) {this.phone = phone;}
	
}
