package com.practical.exam;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ProgramRunner {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext context = new
				ClassPathXmlApplicationContext("Beans.xml");
				Student student = (Student) context.getBean("program-03");
				System.out.println("Student Name Set by Setter Method through Dependecy Injection : "+student.getName());
				System.out.println("Student Age Set by Setter Method through Dependency Injection :"+student.getAge());
	}

}
