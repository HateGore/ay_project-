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

<form action="${pageContext.request.contextPath }/pquestion/write">
	<table border="1" cellspacing="0">
	
	
	<tr>	
		<th>작성자</th>	
		<td><input type="text" name="writer" value="${sessionScope.id }" readonly></td>
	</tr>
	
	<tr>
		<th>제목</th>
		<td><input type="text" name="title"></td>
	</tr>
	
	
	<tr>	
		<th>내용</th>
		<td><textarea name="content" cols="50" rows="50"></textarea></td>
	</tr>	
	
	<tr>
	<td>
	<input type="submit" value="문의작성">
	<input type="reset" value="지우기">
	<input type="hidden" name="pnum" value="${pq.num }">
	</td>
	</tr>

	</table>
</form>
</body>
</html>