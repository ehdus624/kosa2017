<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href = "./list"><button>전 사원 목록</button></a>
<table border = 1>
<tr>
	<th>사번</th>
	<th>이름</th>
	<th>이메일</th>
	<th>연락처</th>
	<th>입사일</th>
	<th>직무</th>
	<th>급여</th>
	<th>보너스비율</th>
	<th>매니저사번</th>
	<th>부서번호</th>
</tr>
<tr>
	<td>${ emp.employeeId }</td>
	<td>${ emp.firstName } ${ emp.lastName }</td>
	<td>${ emp.email }</td>
	<td>${ emp.phoneNumber }</td>
	<td>${ emp.hireDate }</td>
	<td>${ emp.jobId }</td>
	<td>${ emp.salary }</td>
	<td>${ emp.commissionPct }</td>
	<td>${ emp.managerId }</td>
	<td>${ emp.departmentId }</td>
</tr>
</table>
</body>
</html>