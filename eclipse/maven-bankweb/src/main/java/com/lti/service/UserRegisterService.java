package com.lti.service;

import com.lti.bean.UserRegister;
import com.lti.exception.BankException;

public interface UserRegisterService {
public void insert(UserRegister ur)throws BankException;
}
