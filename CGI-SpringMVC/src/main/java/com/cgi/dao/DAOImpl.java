package com.cgi.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.cgi.bean.Employee;

public class DAOImpl implements DAO {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void registerEmployee(Employee employee) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(employee);
		tx.commit();
		session.close();
	}

	@Override
	public List<Employee> getList() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Employee> employeeList = session.createQuery("from Employee")
				.list();
		session.close();
		return employeeList;
	}

}
