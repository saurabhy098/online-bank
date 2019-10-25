package com.lti.dao;

import com.lti.exception.BankException;

public interface LoginDao {
public boolean isValid(String user,String password)throws BankException ;
}
