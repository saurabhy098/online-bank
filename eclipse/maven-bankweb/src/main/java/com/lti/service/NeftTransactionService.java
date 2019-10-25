package com.lti.service;

import java.math.BigDecimal;
import java.util.Date;

import com.lti.exception.BankException;

public interface NeftTransactionService {
	public void transaction(BigDecimal senderaccno, BigDecimal receiveraccno, int amt, Date date)throws BankException ;
//	public boolean validate(int account_no);
//	public boolean min_Bal(int account_no,int amount);
}
