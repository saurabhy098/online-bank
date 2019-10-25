package com.lti.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.bean.Login;
import com.lti.dao.LoginDao;
import com.lti.exception.BankException;

@Service("loginService")
public class LoginServiceImpl implements LoginService{

	@Autowired
	LoginDao loginDao;
	
	@Override
	public boolean isValid(String user,String password)throws BankException {
		return loginDao.isValid(user,password);
		
	}

}
