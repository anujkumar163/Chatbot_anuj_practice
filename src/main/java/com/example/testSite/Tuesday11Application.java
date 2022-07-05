package com.example.testSite;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication(scanBasePackages = { "com.example.testSite"})
@ComponentScan
public class Tuesday11Application {

	public static void main(String[] args) {
		SpringApplication.run(Tuesday11Application.class, args);
	}

}
