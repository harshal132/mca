package com.application;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.classes.HelloWorld;

public class MainApp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext context=new ClassPathXmlApplicationContext("Beans.xml");
		HelloWorld object=(HelloWorld)context.getBean("helloworld");
		object.setMessage("Hello World");
		object.getMessage();
	}

}
