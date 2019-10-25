package com.lti.service;

import com.lti.bean.Payee;
import com.lti.exception.BankException;

public interface PayeeService {
public void insert(Payee payee)throws BankException;
}
