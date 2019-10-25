package com.lti.dao;

import javax.persistence.EntityManager;


import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.lti.bean.Login;
import com.lti.exception.BankException;

@Repository
@Transactional(propagation = Propagation.REQUIRED)
public class LoginDaoImpl implements LoginDao {

	@PersistenceContext
	private EntityManager manager;

	@Override
	public boolean isValid(String user, String password)throws BankException{

		Query qry = manager.createQuery("FROM Login WHERE user_id = :user and user_password = :password");
		qry.setParameter("user", user);
		qry.setParameter("password", password);
		System.out.println("1");
		Login log = (Login) qry.getSingleResult();
		System.out.println(log);
		if (log != null) {
			System.out.println("Valid login");
			return true;

		} else
			return false;

	}

}
