package com.bit.good.dto;

public class DeletepageDto {
   private String email;
   private int phone;
   private String nick,pw;
   
   public DeletepageDto() {
      // TODO Auto-generated constructor stub
   }
   
   public DeletepageDto(String email, int phone, String nick, String pw) {
      super();
      this.email = email;
      this.phone = phone;
      this.nick = nick;
      this.pw = pw;
   }
   public String getEmail() {
      return email;
   }
   public void setEmail(String email) {
      this.email = email;
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
   public String getPw() {
      return pw;
   }
   public void setPw(String pw) {
      this.pw = pw;
   }
   
   
}