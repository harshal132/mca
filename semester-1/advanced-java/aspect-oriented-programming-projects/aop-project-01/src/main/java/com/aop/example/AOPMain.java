package com.aop.example;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.classes.Student;

public class AOPMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext context = new
				ClassPathXmlApplicationContext("Beans.xml");
				Student student = (Student) context.getBean("student");
				student.getName();
				student.getAge();
				
	}

}
