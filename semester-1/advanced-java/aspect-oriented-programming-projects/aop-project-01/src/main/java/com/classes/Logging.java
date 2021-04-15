package com.classes;

public class Logging {
	/**
	* This is the method which I would like to execute
	* before a selected method execution.
	*/
	public void beforeAdvice(){
		System.out.println("Going to setup student profile.");
	}
	/**
	* This is the method which I would like to execute
	* after a selected method execution.
	*/
	public void afterAdvice(){
		System.out.println("Student profile has been setup.");
	}
	/**
	* This is the method which I would like to execute
	* when any method returns.
	*/
}
