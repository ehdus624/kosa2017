<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href = "../"><button>메인 화면으로</button></a>
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
	<th>삭제처리</th>
	<th>정보수정</th>
</tr>
<c:forEach var = "emp" items = "${ empList }">
<tr>
	<td><a href = "<c:url value = '/hr/${ emp.employeeId }' />">${ emp.employeeId }</a></td>
	<td>${ emp.firstName } ${ emp.lastName }</td>
	<td>${ emp.email }</td>
	<td>${ emp.phoneNumber }</td>
	<td>${ emp.hireDate }</td>
	<td>${ emp.jobId }</td>
	<td>${ emp.salary }</td>
	<td>${ emp.commissionPct }</td>
	<td>${ emp.managerId }</td>
	<td>${ emp.departmentId }</td>
	<td><a href = "<c:url value = '/hr/delete/${ emp.employeeId }' />">삭제</a></td>
	<td><a href = "<c:url value = '/hr/update/${ emp.employeeId }' />">수정</a></td>
</tr>
</c:forEach>
</table>
</body>
</html>