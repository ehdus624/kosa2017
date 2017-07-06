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
<h1>사원 정보 입력</h1>
<form action = "insert" method = "post">
<table border="1">
<tr>
  <th>EMPLOYEE_ID</th>
  <td><input type="number" name="employeeId"></td>
</tr>
<tr>
  <th>FIRST_NAME</th>
  <td><input type="text" name="firstName"></td>
</tr>
<tr>
  <th>LAST_NAME</th>
  <td><input type="text" name="lastName"></td>
</tr>
<tr>
  <th>EMAIL</th>
  <td><input type="text" name="email"></td>
</tr>
<tr>
  <th>PHONE_NUMBER</th>
  <td><input type="text" name="phoneNumber"></td>
</tr>
<tr>
  <th>HIRE_DATE</th>
  <td><input type="date" name="hireDate"></td>
</tr>
<tr>
  <th>JOB_ID</th>
  <td>
    <select name="jobId">
    <c:forEach var="job" items="${jobs}">
      <option value="${job.jobId}">${job.title}</option>
    </c:forEach>
    </select>
  </td>
</tr>
<tr>
  <th>SALARY</th>
  <td><input type="number" name="salary"></td>
</tr>
<tr>
  <th>COMMISSION_PCT</th>
  <td><input type="number" name="commissionPct" step="0.1" min="0" max="0.99"></td>
</tr>
<tr>
  <th>MANAGER_ID</th>
  <td>
    <select name="managerId">
    <c:forEach var="manager" items="${managers}">
      <option value="${manager.managerId}">${manager.firstName}</option>
    </c:forEach>
    </select>
  </td>
</tr>
<tr>
  <th>DEPARTMENT_ID</th>
  <td>
    <select name="departmentId">
    <c:forEach var="map" items="${depts}">
      <c:forEach var="dept" items="${map}">
        <option value="${dept.key}">${dept.value}</option>
      </c:forEach>
    </c:forEach>
    </select>
  </td></tr>
<tr>
  <th> </th>
  <td>
    <input type="submit" value="입력"> 
    <input type="reset" value="취소">
  </td>
</tr>
</table>
</form>
<a href = "../"><button>메인 화면으로</button></a>
</body>
</html>