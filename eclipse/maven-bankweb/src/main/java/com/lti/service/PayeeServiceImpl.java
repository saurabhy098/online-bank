package com.lti.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.bean.Payee;
import com.lti.dao.PayeeDao;
import com.lti.exception.BankException;

@Service("payeeService")
public class PayeeServiceImpl implements PayeeService {

	@Autowired
	PayeeDao  payeeDao;
	
	@Override
	public void insert(Payee payee) throws BankException{
		payeeDao.insert(payee);
	}

}
