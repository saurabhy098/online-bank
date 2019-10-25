package com.lti.dao;

import java.math.BigDecimal;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.lti.bean.Payee;
import com.lti.bean.PersonalAccountDetail;
import com.lti.exception.BankException;

@Repository
@Transactional(propagation = Propagation.REQUIRED)
public class PayeeDaoImpl implements PayeeDao {

	@PersistenceContext
	private EntityManager entityManager;

	public boolean validate(BigDecimal account_no)throws BankException {
		boolean flag = false;
		System.out.println("LoginService.validateUser method...");

		Query qry = entityManager.createQuery("FROM PersonalAccountDetail WHERE  account_no =:acc");
		qry.setParameter("acc", account_no);

		System.out.println("1");
		PersonalAccountDetail personalAccountDetail = (PersonalAccountDetail) qry.getSingleResult();
		System.out.println(personalAccountDetail);
		if (personalAccountDetail != null) {
			System.out.println("Valid login");
			flag = true;
			return flag;
		}
		return flag;
	}

	@Override
	public void insert(Payee payee) throws BankException{
		if (validate(payee.getReceiveraccno())) {

			entityManager.persist(payee);
		}
	}
}