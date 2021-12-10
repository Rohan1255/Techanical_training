package com.app.exceptionhandler;

@SuppressWarnings("serial")
class UserException extends RuntimeException{
	
	public UserException(String errMsg) {
		super(errMsg);
	}
}
