package com.lti.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.lti.bean.Login;
import com.lti.bean.UserRegister;
import com.lti.exception.BankException;

@Repository
@Transactional(propagation = Propagation.REQUIRED)
public class UserRegisterDaoImpl implements UserRegisterDao {
	
	@PersistenceContext
	private EntityManager entityManager;

	
	@Override
	public void insert(UserRegister ur)throws BankException {
			entityManager.persist(ur);
			Login login=new Login();
			login.setUser_id(ur.getUser_id());
			login.setUser_password(ur.getUser_password());
			entityManager.persist(login);
		
	}

	

}
