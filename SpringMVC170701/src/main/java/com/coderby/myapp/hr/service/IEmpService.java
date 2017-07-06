package com.coderby.myapp.hr.service;

import java.util.List;
import java.util.Map;

import com.coderby.myapp.hr.model.EmpVO;

public interface IEmpService {
	public int getEmpCount();
	public int getEmpCount(int deptid);
	public List<EmpVO> getEmpList();
	public EmpVO getEmpInfo(int empid);
	public void updateEmp(EmpVO emp);
	public void insertEmp(EmpVO emp);
	public void deleteJobHistory(int empid);
	public void deleteEmp(int empid, String email);
	public List<Map<Integer, String>> getAllDeptId();
	public List<Map<String, Object>> getAllJobId();
	public List<Map<String, Object>> getAllManagerId();
}
