<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js">
	
	
	
</script>
</head>
<body>
	
	<h3></h3>
	<table border="1" cellspacing="0">
		<thead>
			<tr>
				<th>�̸�</th>
				<th>����Ŀ</th>
				<th>����</th>
				<th>������</th>
				<th>���</th>
				<th>����</th>
				</tr>
		</thead>
		<c:forEach var="b" items="${list}">
			<tr>
				<td><c:out value="${p.num}" /></td>
				<td><c:out value="${p.name}" /></td>
				<td><c:out value="${p.price}" /></td>
				<td><c:out value="${p.origin}" /></td>
				<td><c:out value="${p.material}" /></td>
				<td><c:out value="${p.quantty}" /></td>				
			</tr>
		</c:forEach>
	</table>
	
	
	
</body>
</html>