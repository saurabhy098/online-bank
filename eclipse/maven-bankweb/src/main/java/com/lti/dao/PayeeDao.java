package com.lti.dao;

import com.lti.bean.Payee;
import com.lti.exception.BankException;

public interface PayeeDao {
public void insert(Payee payee)throws BankException ;
}
