package com.example.micro.service.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.micro.service.response.Employees;

@RestController
public class EmployeeDetailsController {
	@GetMapping("/employees")  
	public Employees retriveLimitsFromConfigurations()  
	{  
	return new Employees("Sateesh", "IT");  
	}  

}