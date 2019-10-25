package com.lti.test;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.context.ApplicationContext;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.lti.exception.BankException;
import com.lti.service.NeftTransactionService;

public class TestTransaction {
	public static void main(String[] args) throws BankException {
		
		//test for neft transfer
		ApplicationContext ctx = new ClassPathXmlApplicationContext("core.xml");
		NeftTransactionService services = ctx.getBean("neftTransactionService", NeftTransactionService.class);
		BigDecimal s = new BigDecimal("2019100205");
		BigDecimal r = new BigDecimal("2019100201");
		String sDate1 = "31/12/1998";
		Date date1 = null;
		try {
			date1 = new SimpleDateFormat("dd/MM/yyyy").parse(sDate1);

		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		services.transaction(s, r, 1000,date1);
		
		
		
		
		//test for add payye
//		ApplicationContext ctx = new ClassPathXmlApplicationContext("core.xml");
//		PayeeService services = ctx.getBean("payeeService", PayeeService.class);
//		BigDecimal r=new BigDecimal(2019100200);
//		BigDecimal s=new BigDecimal(1234567890);
//		Payee payee=new Payee("saurabh","yadav",r,s);
//		services.insert(payee);

//		//test for transaction list 
//		ApplicationContext ctx = new ClassPathXmlApplicationContext("core.xml");
//		TransactionListService services = ctx.getBean("transactionListService", TransactionListService.class);
//		BigDecimal r=new BigDecimal(2019100200);
//		List<Transaction> t=services.getTransactionList(r);	
//		for (Transaction transaction : t) {
//			System.out.println(transaction);
		//}
		
	}
}
