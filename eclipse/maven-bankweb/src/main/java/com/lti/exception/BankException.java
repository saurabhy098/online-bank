package com.lti.exception;

public class BankException extends Exception{

	
	public BankException(String message, Throwable cause) {
		super(message, cause);
	}
	
	public BankException(String message) {
		super(message);
	}
	
	
}
