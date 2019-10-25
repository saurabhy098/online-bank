package com.lti.bean;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name ="PAYEE" )
public class Payee {
	@Column(name = "NICK_NAME ")
	private String nickname;
	
	@Column(name ="RECEIVER_NAME " )
	private String receivername;
	
	@Column(name ="RECEIVER_ACCOUNT_NO " )
	private BigDecimal receiveraccno;
	
	@Id
	@Column(name = "SENDER_ACCOUNT_NO ")
	private BigDecimal senderaccno;
	
	
	
	public Payee() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Payee(String nickname, String receivername, BigDecimal receiveraccno, BigDecimal senderaccno) {
		super();
		this.nickname = nickname;
		this.receivername = receivername;
		this.receiveraccno = receiveraccno;
		this.senderaccno = senderaccno;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getReceivername() {
		return receivername;
	}
	public void setReceivername(String receivername) {
		this.receivername = receivername;
	}
	public BigDecimal getReceiveraccno() {
		return receiveraccno;
	}
	public void setReceiveraccno(BigDecimal receiveraccno) {
		this.receiveraccno = receiveraccno;
	}
	public BigDecimal getSenderaccno() {
		return senderaccno;
	}
	public void setSenderaccno(BigDecimal senderaccno) {
		this.senderaccno = senderaccno;
	}
	@Override
	public String toString() {
		return "Payee [nickname=" + nickname + ", receivername=" + receivername + ", receiveraccno=" + receiveraccno
				+ ", senderaccno=" + senderaccno + "]";
	}
	

}
