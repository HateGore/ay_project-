<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Product Register</h1>
	<form action="${pageContext.request.contextPath }/admin/write" method="post"  enctype="multipart/form-data">
		<table border="1">
			<tr>
				<th>��ǰ��</th><td><input type="text" name="name"></td>
			</tr>
			<tr>
				<th>������</th><td><input type="text" name="maker"></td>
			</tr>
			<tr>
				<th>����</th><td><input type="text" name="price" ></td>
			</tr>
			<tr>
				<th>������</th><td><input type="text" name="origin" ></td>
			</tr>
			<tr>
				<th>�����</th><td><input type="text" name="material" ></td>
			</tr>
			<tr>
				<th>���</th><td><input type="text" name="quantity" ></td>
			</tr>
			<tr>
				<th>����÷��1</th><td><input type="file" name="file1"></td>
			</tr>
			<tr>
				<th>����÷��2</th><td><input type="file" name="file2"></td>
			</tr>
			<tr>
				<th>����÷��3</th><td><input type="file" name="file3"></td>
			</tr>
			<tr><td><input type="reset" value="���"></td>
			<td><input type="submit" value="���"></td></tr>
		</table>
		<input type="hidden" name="imgPath" value="C:\\shopimg\\"> 
		<input type="hidden" name="event_num" value="0"> 
	</form>
</body>
</html>