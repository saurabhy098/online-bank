package com.lti.service;

import com.lti.bean.Login;
import com.lti.exception.BankException;

public interface LoginService {
	public boolean isValid(String user,String password) throws BankException;
}
