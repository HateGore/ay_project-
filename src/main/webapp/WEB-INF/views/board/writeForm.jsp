<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Board Register</h1>
	<form action="/board/write" method="post">
		<table border="1">
			<tr>
				<th>�ۼ���</th><td><input type="text" name="writer" value="${sessionScope.id }"></td>
			</tr>
			<tr>
				<th>����</th><td><input type="text" name="title"></td>
			</tr>
			<tr>
				<th>����</th><td><textarea rows="10" cols="33"></td>
			</tr>
			<tr>
				<th>�ۼ���</th><td><input type="text" name="writer" value="${sessionScope.id }"></td>
			</tr>
			<tr>
				<th>����÷��</th><td><input type="file" name="files" value="${sessionScope.id }"></td>
			</tr>
		</table>
	</form>
</body>
</html>