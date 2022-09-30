package com.example.micro.service.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.micro.service.configuration.EmployeeConfiguration;
import com.example.micro.service.response.Employees;

@RestController
public class EmployeeDetailsController {
	
	@Autowired
	private EmployeeConfiguration employeeConfiguration;
	
	@GetMapping("/employees")  
	public Employees retriveLimitsFromConfigurations()  
	{  
	return new Employees(employeeConfiguration.getName(), employeeConfiguration.getDepartment());  
	}  

}