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
	<form action="${pageContext.request.contextPath }/board/write" method="post"  enctype="multipart/form-data">
		<table border="1">
			<tr>
				<th>�ۼ���</th><td><input type="text" name="writer" value="${sessionScope.id }"></td>
			</tr>
			<tr>
				<th>����</th><td><input type="text" name="title"></td>
			</tr>
			<tr>
				<th>����</th><td><textarea rows="10" cols="33" ></textarea></td>
			</tr>
			<tr>
				<th>�ۼ���</th><td><input type="text" name="writer" value="${sessionScope.id }"></td>
			</tr>
			<tr>
				<th>����÷��1</th><td><input type="file" name="file1"></td>
				<th>����÷��2</th><td><input type="file" name="file2"></td>
				<th>����÷��3</th><td><input type="file" name="file3"></td>
			</tr>
			<tr><td><input type="reset" value="���">	</td>
			<td><input type="submit" value="���"></td></tr>
		</table>
	</form>
</body>
</html>