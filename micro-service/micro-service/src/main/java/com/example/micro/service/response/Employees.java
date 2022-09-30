package com.example.micro.service.response;


public class Employees {
	public Employees() {
		super();
	}
	
	
	private String name;
	private String department;
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}


	
	
	public Employees(String name, String dep) {
		super();
		this.name = name;
		this.department=dep;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

}