package com.lti.dao;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.lti.bean.DebitTransaction;
import com.lti.exception.BankException;


@Repository
@Transactional(propagation = Propagation.REQUIRED)
public class TransactionListDaoImpl implements  TransactionListDao {

	@PersistenceContext
	private EntityManager manager;
	
	@Override
	public List<DebitTransaction> getTransactionList(BigDecimal accountno)throws BankException {
		Query qry = manager.createQuery("FROM Transaction WHERE senderaccount_no = :acc");
		qry.setParameter("acc", accountno);
		return qry.getResultList();
	}

}
