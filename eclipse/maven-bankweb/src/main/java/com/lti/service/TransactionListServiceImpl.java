package com.lti.service;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.bean.Transaction;
import com.lti.dao.TransactionListDao;
import com.lti.exception.BankException;
@Service("transactionListService")
public class TransactionListServiceImpl implements TransactionListService {

	@Autowired
	TransactionListDao transactionListDao;
	
	
	@Override
	public List<Transaction> getTransactionList(BigDecimal accountno)throws BankException {
		// TODO Auto-generated method stub
		return transactionListDao.getTransactionList(accountno);
	}

}
