package com.lti.dao;

import java.math.BigDecimal;
import java.util.List;

import com.lti.bean.Transaction;
import com.lti.exception.BankException;

public interface TransactionListDao {
	public List<Transaction> getTransactionList(BigDecimal accountno)throws BankException;	 
}
