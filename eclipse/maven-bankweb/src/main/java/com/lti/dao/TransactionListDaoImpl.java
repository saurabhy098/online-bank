package com.lti.dao;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.lti.bean.CreditTransaction;
import com.lti.bean.DebitTransaction;
import com.lti.exception.BankException;


@Repository
@Transactional(propagation = Propagation.REQUIRED)
public class TransactionListDaoImpl implements  TransactionListDao {

	@PersistenceContext
	private EntityManager manager;
	
	@Override
	public List<DebitTransaction> getDebitTransactionList(BigDecimal accountno)throws BankException {
		Query qry = manager.createQuery("FROM DebitTransaction WHERE senderaccount_no = :acc");
		qry.setParameter("acc", accountno);
		return qry.getResultList();
	}
	
	@Override
	public List<CreditTransaction> getCreditTransactionList(BigDecimal accountno)throws BankException {
		Query qry = manager.createQuery("FROM CreditTransaction WHERE receiveraccount_no = :acc");
		qry.setParameter("acc", accountno);
		return qry.getResultList();
	}

}
