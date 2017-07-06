package com.coderby.myapp.hr.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.coderby.myapp.hr.model.EmpVO;
import com.coderby.myapp.hr.service.IEmpService;

@Controller
@RequestMapping("/hr")
public class EmpController {
	
	@Autowired
	IEmpService empService;
	
	@RequestMapping(value = "/count/{deptid}", method = RequestMethod.GET)
	public String empCount(@PathVariable int deptid, Model model) {
		if(deptid == 0) {
			model.addAttribute("result", empService.getEmpCount());
		} else {
			model.addAttribute("result", empService.getEmpCount(deptid));
		}
		return "hr/count";
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insertEmp(Model model) {
	    model.addAttribute("jobs", empService.getAllJobId());
	    model.addAttribute("managers", empService.getAllManagerId());
	    model.addAttribute("depts", empService.getAllDeptId());
		return "hr/insertform";
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insertEmp(EmpVO emp, Model model) {
		try{
			empService.insertEmp(emp);
		} catch(Exception e) {
			model.addAttribute("message", e.getMessage());
			return "hr/error"; // ${message}
		}
		return "redirect:/hr/count/0"; // 성공
	}
	
	@RequestMapping(value = "/list")
	public String getEmpList(Model model) {
		model.addAttribute("empList", empService.getEmpList());
		return "hr/list";
	}
	
	@RequestMapping(value = "/update/{empid}", method = RequestMethod.GET)
	public String updateEmp(@PathVariable int empid, Model model) {
		model.addAttribute("emp", empService.getEmpInfo(empid));
		model.addAttribute("jobs", empService.getAllJobId());
	    model.addAttribute("managers", empService.getAllManagerId());
	    model.addAttribute("depts", empService.getAllDeptId());
		return "hr/updateform";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateEmp(EmpVO emp) {
		empService.updateEmp(emp);
		return "redirect:/hr/list";
	}
	
	@RequestMapping(value = "/delete/{empid}", method = RequestMethod.GET)
	public String deleteEmp(@PathVariable int empid, String email, Model model, HttpSession session) {
		model.addAttribute("emp", empService.getEmpInfo(empid));
		email = empService.getEmpInfo(empid).getEmail();
		session.setAttribute("empid", empid);
		session.setAttribute("email", email);
		return "hr/deleteform";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String deleteEmp(String email, HttpSession session, Model model) {
		int empid = (Integer)session.getAttribute("empid");
		String zzz = (String)session.getAttribute("email");
		if(zzz.equals(email)) {
			empService.deleteEmp(empid, zzz);
			session.invalidate();
			return "redirect:/hr/list";
		} else {
			model.addAttribute("message", "이메일을 잘못입력하셨습니다.");
			return "hr/deleteform";
		}
	}
	
	@RequestMapping(value = "/{empid}")
	public String getEmpInfo(@PathVariable int empid, Model model) {
		model.addAttribute("emp", empService.getEmpInfo(empid));
		return "hr/view";
	}
	
	
}
