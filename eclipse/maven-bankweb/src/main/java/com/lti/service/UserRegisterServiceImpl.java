package com.lti.service;



import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;


import com.lti.bean.UserRegister;
import com.lti.dao.UserRegisterDao;
import com.lti.exception.BankException;





@Service("userRegisterService")
public class UserRegisterServiceImpl implements UserRegisterService{

	@Autowired
	UserRegisterDao userRegisterDao;
	
	@Override
	public void insert(UserRegister ur)throws BankException {
		userRegisterDao.insert(ur);
	}

}
