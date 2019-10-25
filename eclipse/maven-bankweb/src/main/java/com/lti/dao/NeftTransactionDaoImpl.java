package com.lti.dao;

import java.math.BigDecimal;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.lti.bean.CustomerBalance;
import com.lti.bean.Payee;
import com.lti.bean.Transaction;
import com.lti.exception.BankException;

@Repository("NeftTransactionDao")
@Transactional(propagation = Propagation.REQUIRED)
public class NeftTransactionDaoImpl implements NeftTransactionDao {

	@PersistenceContext
	private EntityManager manager;

	@Override
	public boolean validate(BigDecimal senderaccount_no, BigDecimal receiveraccount_no) throws BankException {
		boolean flag = false;
		System.out.println("LoginService.validateUser method...");

		Query qry = manager.createQuery("FROM Payee WHERE senderaccno =:sender and receiveraccno =:receiver");
		qry.setParameter("sender", senderaccount_no);
		qry.setParameter("receiver", receiveraccount_no);

		System.out.println("1");
		Payee payee = (Payee) qry.getSingleResult();
		System.out.println(payee);
		if (payee != null) {
			System.out.println("Valid login");
			flag = true;
			return flag;
		}
		manager.clear();
		return flag;

	}

	@Override
	public boolean min_Bal(BigDecimal account_no, int amount) throws BankException {
		boolean flag = false;
		System.out.println("LoginService.validateUser method...");

		Query qry = manager.createQuery("FROM CustomerBalance WHERE acc_no =:acc");
		qry.setParameter("acc", account_no);
		System.out.println("going in customer balance");
		CustomerBalance customerBalance = (CustomerBalance) qry.getSingleResult();
		System.out.println("bal" + customerBalance);
		int bal = customerBalance.getBal();

		System.out.println(customerBalance);
		if (customerBalance != null) {
			if ((bal - amount) >= 1000) {
				System.out.println("Valid transfer");
				flag = true;
				return flag;
			}
		}
		return flag;
	}

	public int debit(BigDecimal accountno, int amt) {

		Query qry = manager.createQuery("FROM CustomerBalance WHERE acc_no =:acc");
		qry.setParameter("acc", accountno);
		CustomerBalance customerBalance = (CustomerBalance) qry.getSingleResult();
		System.out.println(customerBalance);
		int bal = customerBalance.getBal() - amt;
		customerBalance.setBal(bal);
		manager.merge(customerBalance);
		return customerBalance.getBal();

	}

	public int credit(BigDecimal accountno, int amt) {

		Query qry = manager.createQuery("FROM CustomerBalance WHERE acc_no =:acc");
		qry.setParameter("acc", accountno);
		CustomerBalance customerBalance = (CustomerBalance) qry.getSingleResult();
		System.out.println(customerBalance);
		int bal = customerBalance.getBal() + amt;
		customerBalance.setBal(bal);
		manager.merge(customerBalance);
		return customerBalance.getBal();
	}

	@Override
	public void transaction(BigDecimal senderaccno, BigDecimal receiveraccno, int amt, Date date) throws BankException {

		Transaction transaction = new Transaction();
		// BigDecimal account_no = senderaccno;
//		int amount = amt;

//		String sDate1 = "31/12/1998";
//		Date date1 = null;
//		try {
//			date1 = new SimpleDateFormat("dd/MM/yyyy").parse(sDate1);
//
//		} catch (ParseException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		if (validate(senderaccno, receiveraccno) && min_Bal(senderaccno, amt)) {
			System.out.println("finally");
			int senderbal = debit(senderaccno, amt);
			int receiverbal = credit(receiveraccno, amt);
			System.out.println(senderbal + " " + receiverbal);
			transaction.setDate(date);
			transaction.setSenderaccount_no(senderaccno);
			transaction.setReceiveraccount_no(receiveraccno);
			transaction.setTransactontype("neft");
			transaction.setCurrentbalaance(senderbal);
			transaction.setAmounttransfer(amt);
			manager.persist(transaction);
			manager.close();
		}
	}
}
