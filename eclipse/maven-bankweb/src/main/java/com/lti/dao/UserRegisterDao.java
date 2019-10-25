package com.lti.dao;

import com.lti.bean.UserRegister;
import com.lti.exception.BankException;

public interface UserRegisterDao {
	public void insert(UserRegister ur)throws BankException;
}
