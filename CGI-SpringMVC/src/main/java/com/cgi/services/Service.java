package com.cgi.services;

import java.util.List;

import com.cgi.bean.Employee;

public interface Service {
	public void registerEmployee(Employee employee);

	public List<Employee> getList();
}
