package com.lti.service;

import java.math.BigDecimal;
import java.util.List;

import com.lti.bean.CreditTransaction;
import com.lti.bean.DebitTransaction;
import com.lti.exception.BankException;

public interface TransactionListService {
	public List<DebitTransaction> getDebitTransactionList(BigDecimal accountno)throws BankException;
	public List<CreditTransaction> getCreditTransactionList(BigDecimal accountno)throws BankException;
}
