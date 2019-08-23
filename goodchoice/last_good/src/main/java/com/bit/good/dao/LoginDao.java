package com.bit.good.dao;


import com.bit.good.dto.JoinDto;

public interface LoginDao {
	public JoinDto loginUser(String email, String pw);
}
