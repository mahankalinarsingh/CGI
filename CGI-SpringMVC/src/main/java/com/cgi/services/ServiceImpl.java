package com.cgi.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.cgi.bean.Employee;
import com.cgi.dao.DAO;

public class ServiceImpl implements Service{

	@Autowired
	DAO daoRef;
	
	@Override
	public void registerEmployee(Employee employee) {
		daoRef.registerEmployee(employee);
	}

	@Override
	public List<Employee> getList() {
		return daoRef.getList();
	}

}
