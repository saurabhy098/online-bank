package com.lti.bean;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "CREDIT_USER_TRANSACTION")
public class CreditTransaction {

	@Id
	@Column(name = "SENDER_ACCOUNT_NO ")
	private BigDecimal senderaccount_no;

	@Column(name = "RECEIVER_ACCOUNT_NO ")
	private BigDecimal receiveraccount_no;

	@Column(name = "TRANSACTION_TYPE ")
	private String transactiontype;

	@Column(name = "CURRENT_BALANCE ")
	private long currentbalaance;

	@Column(name = "AMOUNT_TRANSFERRED ")
	private long amounttransfered;

	@Column(name = "TRANSACTION_DATE")
	private Date date;

	public CreditTransaction() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CreditTransaction(BigDecimal senderaccount_no, BigDecimal receiveraccount_no, String transactiontype,
			long currentbalaance, long amounttransfered, Date date) {
		super();
		this.senderaccount_no = senderaccount_no;
		this.receiveraccount_no = receiveraccount_no;
		this.transactiontype = transactiontype;
		this.currentbalaance = currentbalaance;
		this.amounttransfered = amounttransfered;
		this.date = date;
	}

	public BigDecimal getSenderaccount_no() {
		return senderaccount_no;
	}

	public void setSenderaccount_no(BigDecimal senderaccount_no) {
		this.senderaccount_no = senderaccount_no;
	}

	public BigDecimal getReceiveraccount_no() {
		return receiveraccount_no;
	}

	public void setReceiveraccount_no(BigDecimal receiveraccount_no) {
		this.receiveraccount_no = receiveraccount_no;
	}

	

	public String getTransactiontype() {
		return transactiontype;
	}

	public void setTransactiontype(String transactiontype) {
		this.transactiontype = transactiontype;
	}

	public long getAmounttransfered() {
		return amounttransfered;
	}

	public void setAmounttransfered(long amounttransfered) {
		this.amounttransfered = amounttransfered;
	}

	public long getCurrentbalaance() {
		return currentbalaance;
	}

	public void setCurrentbalaance(long currentbalaance) {
		this.currentbalaance = currentbalaance;
	}

	public long getAmounttransfer() {
		return amounttransfered;
	}

	public void setAmounttransfer(long amounttransfer) {
		this.amounttransfered = amounttransfer;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

}
