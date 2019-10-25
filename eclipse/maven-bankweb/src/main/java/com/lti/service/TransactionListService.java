package com.lti.service;

import java.math.BigDecimal;
import java.util.List;

import com.lti.bean.DebitTransaction;
import com.lti.exception.BankException;

public interface TransactionListService {
	public List<DebitTransaction> getTransactionList(BigDecimal accountno)throws BankException;
}
