package com.application;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
//import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class SpringBootHelloWorldApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootHelloWorldApplication.class, args);
	}
//	Simple Way to write Hello World
//	@RequestMapping("/")
//	public String homePage() {
//		return "Hello World!";
//	}
//	@RequestMapping("/login")
//	public String loginPage() {
//		return "Login Page!";
//	}
	
	
}
