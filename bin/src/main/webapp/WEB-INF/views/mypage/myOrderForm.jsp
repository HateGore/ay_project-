<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:if test="${empty list }">
 ��ϵ� ��ǰ�� ����. 
</c:if>
<c:if test="${not empty list }">
<table>
<tr><th>�ֹ���ȣ</th><th>�ֹ���ID</th><th>��ǰ��ȣ</th><th>����</th><th>��¥</th><th>��ۻ���</th>
<c:forEach var="p" items="${list }">
<tr>
	<td>${ p.num }</td>
	<td>${ p.m_id }</td>
	<td>${ p.p_num }</td>
	<td>${ p.cost }</td>
	<td>${ p.o_date }</td>
	<td>${ p.state }</td>
</tr>
</c:forEach>
</table>
</c:if>
</body>
</html>