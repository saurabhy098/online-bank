package com.lti.bean;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity(name = "PersonalAccountDetail")
@Table(name="PERSONAL_ACCOUNT_DET")
public class PersonalAccountDetail {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "BID")
	@SequenceGenerator(name="BID" , sequenceName = "ACCOUNT_NO_SEQ", allocationSize = 1)
	@Column(name="ACCOUNT_NO ")
	private BigDecimal account_no;
	@Column(name="TITLE")
	private String title;
	@Column(name="FIRST_NAME")
	private String first_name;
	@Column(name="LAST_NAME ")
	private String last_name;
	@Column(name="FATHER_NAME ")
	private String father_name;
	@Column(name="MOBILE_NO ")
	private BigDecimal mobile_no;
	@Column(name="EMAIL_ID ")
	private String email_id;
	@Column(name="AADHAR_NO ")
	private String  aadhar_no;
	@Column(name="DOB ")
	private Date dob;

	public BigDecimal getAccount_no() {
		return account_no;
	}

	public void setAccount_no(BigDecimal account_no) {
		this.account_no = account_no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getFather_name() {
		return father_name;
	}

	public void setFather_name(String father_name) {
		this.father_name = father_name;
	}

	public BigDecimal getMobile_no() {
		return mobile_no;
	}

	public void setMobile_no(BigDecimal mobile_no) {
		this.mobile_no = mobile_no;
	}

	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public String getAadhar_no() {
		return aadhar_no;
	}

	public void setAadhar_no(String aadhar_no) {
		this.aadhar_no = aadhar_no;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob( Date date1) {
		this.dob = date1;
	}

	@Override
	public String toString() {
		return "Personal_Account_Detail [account_no=" + account_no + ", title=" + title + ", first_name=" + first_name
				+ ", last_name=" + last_name + ", father_name=" + father_name + ", mobile_no=" + mobile_no
				+ ", email_id=" + email_id + ", aadhar_no=" + aadhar_no + ", dob=" + dob + "]";
	}

}
