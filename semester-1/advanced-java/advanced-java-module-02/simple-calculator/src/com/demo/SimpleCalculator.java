package com.demo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SimpleCalculator extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest req, HttpServletResponse res) {
		int num1 = Integer.parseInt(req.getParameter("first"));
		int num2 = Integer.parseInt(req.getParameter("second"));
		int result = 0;
		String operation=req.getParameter("operation");
		if(operation.equals("addition")) {
			result = num1+num2;
		}
		else if(operation.equals("subtraction")) {
			result = num1-num2;
		}
		else if(operation.equals("division")) {
			result = num1/num2;
		}
		else{
			result = num1*num2;
		}
		
		PrintWriter out = null;
		
		try {
			out = res.getWriter();
			out.println("Result is "+result);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
