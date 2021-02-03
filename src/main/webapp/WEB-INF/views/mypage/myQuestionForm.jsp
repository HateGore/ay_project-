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
<%  %>
<c:if test="${empty list }">
 ��ϵ� ��ǰ�� ����. 
</c:if>
<c:if test="${not empty list }">
<table>
<tr><th>num</th><th>pwd</th><th>writer</th><th>title</th><th>content</th><th>path</th><th>�亯����</th>
<c:forEach var="p" items="${list }">
<tr>
	<td>${ p.num }</td>
	<td>${ p.pwd }</td>
	<td>${ p.writer }</td>
	<td><a href="${ pageContext.request.contextPath }/board/detail?num=${ p.num }">${ p.title }</a></td>
	<td>${ p.content }</td>
	<td>${ p.path }</td>
	<td><input type="button" value="�亯����"></td>
</tr>
<!-- ���� �Ʒ��� td�� �����Ͽ� ���Ǵ亯�� �ٷ� Ȯ���ϵ��� ���� -->
</c:forEach>
</table>
</c:if>
</body>
</html>