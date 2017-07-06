<%@ page contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>사원 정보 삭제를 위해 이메일을 확인합니다.</h1>
<form action = "<c:url value = '/hr/delete'/>" method = "post">
이메일: <input type = "text" name = "email"><br>
<input type = "submit" value = " 삭제 ">
<input type = "reset" value = " 취소 ">
<h2>${ message }</h2>
</form>
<a href = "../list"><button>전 사원 목록</button></a>
</body>
</html>