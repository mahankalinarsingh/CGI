package com.cgi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cgi.bean.Employee;
import com.cgi.services.Service;

@Controller
public class EmployeeController {
	@Autowired
	Service services;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String openRegistrationPage(){
		return "Registration";
	}
	
	@RequestMapping("register")  
	 public ModelAndView registerUser(@ModelAttribute Employee employee) {  
		services.registerEmployee(employee);
	  return new ModelAndView("redirect:ViewEmployee");  
	 }  
	
	@RequestMapping("ViewEmployee")  
	 public ModelAndView getList() {  
	  List<Employee> employeeList = services.getList();
	  return new ModelAndView("ViewEmployee","employeeList", employeeList);  
	 }  
	
	@RequestMapping(value="openForm", method=RequestMethod.GET)
	public String openRegistrationPage2(){
		return "Registration";
	}

}
