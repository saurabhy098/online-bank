package com.lti.service;

import java.math.BigDecimal;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.dao.NeftTransactionDao;
import com.lti.exception.BankException;

@Service("neftTransactionService")
public class NeftTransactionServiceImpl implements NeftTransactionService {

	@Autowired
	NeftTransactionDao neftTransactionDao;

	@Override
	public void transaction(BigDecimal senderaccno, BigDecimal receiveraccno, int amt,Date date)throws BankException{
		neftTransactionDao.transaction(senderaccno, receiveraccno, amt, date);

	}

}