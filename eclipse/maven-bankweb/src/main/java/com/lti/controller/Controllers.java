package com.lti.controller;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.lti.bean.Login;
import com.lti.bean.Payee;
import com.lti.bean.CreditTransaction;
import com.lti.bean.DebitTransaction;
import com.lti.bean.UserRegister;
import com.lti.exception.BankException;
import com.lti.service.ForgotPasswordService;
import com.lti.service.ForgotUserIdService;
import com.lti.service.LoginService;
import com.lti.service.NeftTransactionService;
import com.lti.service.PayeeService;
import com.lti.service.TransactionListService;
import com.lti.service.UserRegisterService;

@Controller
public class Controllers {

	@Resource
	private UserRegisterService userRegisterService;

	@Resource
	private LoginService loginService;

	@Resource
	private PayeeService payeeService;

	@Resource
	private TransactionListService transactionListService;

	@Resource
	private NeftTransactionService neftTransactionService;
	
	@Resource
	ForgotUserIdService forgotUserIdService; 
	
	@Resource
	ForgotPasswordService forgetPasswordService;
	

	@RequestMapping("/Register")
	public String Register() {
		System.out.println("abxc");
		return "Register";
	}

	@RequestMapping(value = "/Register", method = RequestMethod.POST)
	public ModelAndView setRegistrationDetails(Model model, UserRegister ur) throws BankException {
		ModelAndView mAndV = null;
		mAndV = new ModelAndView();
		userRegisterService.insert(ur);
		mAndV.setViewName("index");
		System.out.println("going to index");
		return mAndV;

	}

	@RequestMapping("/Login")
	public String Login() {
		System.out.println("login page");
		return "Login";
	}

	@RequestMapping(value = "/Login", method = RequestMethod.POST)
	public ModelAndView getLoginDetails(ModelMap model, @RequestParam("user_id") String username,
			@RequestParam("user_password") String password) throws BankException {
		ModelAndView mAndV = null;
		// String user,pass;

		boolean uid = loginService.isValid(username, password);
		System.out.println(uid);
		if (uid) {
			System.out.println("login validate");
			mAndV = new ModelAndView();
			mAndV.setViewName("Dashboard");
			return mAndV;
		} else {
			mAndV = new ModelAndView();
			mAndV.setViewName("Login");

			return mAndV;
		}
	}

	@RequestMapping("/Dashboard")
	public String Dashboard() {
		System.out.println("Dashboard page");
		return "Dashboard";
	}

//	@RequestMapping("/AccountStatement")
//	public String AccountStatement() {
//		System.out.println("AccountStatement page");
//		return "AccountStatement";
//	}

	@RequestMapping("/Payee")
	public String FundTransfer() {
		System.out.println("add payee page");
		return "Payee";
	}

	@RequestMapping(value = "/Payee", method = RequestMethod.POST)
	public ModelAndView addPayee(Model model, Payee payee) throws BankException {
		ModelAndView mAndV = null;

		payeeService.insert(payee);
		mAndV = new ModelAndView();
		mAndV.setViewName("Neft");
		// System.out.println("going to neft");
		return mAndV;
	}

	@RequestMapping("/AccountStatement")
	public String AccountStatement() {
		System.out.println(" AccountStatement page");
		return "AccountStatement";
	}

	@RequestMapping(value = "/AccountStatement", method = RequestMethod.POST)
	public ModelAndView getTransactionDetails() {
		ModelAndView mAndV = null;

		List<DebitTransaction> dtransaction = null;
		List<CreditTransaction> ctransaction = null;
		BigDecimal r = new BigDecimal(2019100205);
		try {
			dtransaction= transactionListService.getDebitTransactionList(r);
			ctransaction= transactionListService.getCreditTransactionList(r);
			mAndV = new ModelAndView();
			mAndV.setViewName("AccountStatement");
			mAndV.addObject("list1", dtransaction);
			mAndV.addObject("list2", ctransaction);			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return mAndV;
	}

	@RequestMapping("/Neft")
	public String Neft() {
		System.out.println(" neft page");
		return "Neft";
	}

	@RequestMapping(value = "/Neft", method = RequestMethod.POST)
	public ModelAndView neftTransfer(ModelMap model, @RequestParam("senderaccount_no") BigDecimal senderaccno,
			@RequestParam("receiveraccount_no") BigDecimal receiveraccno, @RequestParam("amount") int amount,
			@RequestParam("date") Date date) {
		ModelAndView mAndV = null;

		DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
		Date dateobj = new Date();
		System.out.println(df.format(dateobj));

		try {
			neftTransactionService.transaction(senderaccno, receiveraccno, amount, dateobj);
			mAndV = new ModelAndView();
			mAndV.setViewName("TransferSuccessful");
		} catch (BankException e) {

			e.printStackTrace();
		}

		return mAndV;

	}

	

	@RequestMapping("/ForgotUserID")
	public String ForgotUser() {
		System.out.println("ForgotUserID page");
		return "ForgotUserID";
	}

	@RequestMapping(value = "/ForgotUserID", method = RequestMethod.POST)
	public String ForgotUserID(ModelMap model, @RequestParam("account_no") BigDecimal account_no) {
		
	
		String user=forgotUserIdService.username(account_no);
		System.out.println(user);
		if (user!=null) {
			model.put("user",user);
		}
		else
		{
			model.put("invalid","invalid user");
		}
		return "showuserid";
	}
	
	@RequestMapping("/showuserid")
	public String showuserid() {
		System.out.println("showuserid page");
		return "showuserid";
	}
	
	@RequestMapping("/ForgotPassword")
	public String ForgotPassword() {
		System.out.println("ForgotPassword page");
		return "ForgotPassword";
	}
	
	@RequestMapping(value = "/ForgotUserID", method = RequestMethod.POST)
	public String ForgotPass(ModelMap model, @RequestParam("userid") String userId) {
		
	
		String pass=forgetPasswordService.password(userId);
		System.out.println(pass);
		if (pass!=null) {
			model.put("pass",pass);
		}
		else
		{
			model.put("invalid","invalid user");
		}
		return "showpassword";
	}

	@RequestMapping("/showpassword")
	public String showpassword() {
		System.out.println("showpassword page");
		return "showpassword";
	}
	
}
