package com.lti.dao;

import java.math.BigDecimal;
import java.util.Date;

import com.lti.exception.BankException;

public interface NeftTransactionDao {
public void transaction(BigDecimal senderaccno, BigDecimal receiveraccno, int amt, Date date)throws BankException ;
public boolean validate(BigDecimal senderaccount_no,BigDecimal receiveraccount_no)throws BankException;
public boolean min_Bal(BigDecimal account_no,int amount)throws BankException;
}
