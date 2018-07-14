package com.cgi.dao;

import java.util.List;

import com.cgi.bean.Employee;

public interface DAO {
	public void registerEmployee(Employee employee);

	public List<Employee> getList();
}
