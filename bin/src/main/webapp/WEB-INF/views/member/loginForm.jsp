<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
function go() {
	var id = document.getElementById("id");
	var password = document.getElementById("password");
	
	if(id.value == ""){
		alert("���̵� �Ǵ� ��й�ȣ��0 �׼Ǻ�")
		return
	}
	if(password.value == ""){
		alert("���̵� �Ǵ� ��й�ȣ�� �׼Ǻ�")
	}else{
		f.submit()
	}
}	
</script>
</head>
<body>
<form name="f" method="POST" action="${pageContext.request.contextPath }/member/login">
	<table border="1">
		<tr>
			<th>ID</th>
			<td><input type="text" name="id" id="id"></td>
		</tr>
		<tr>
			<th>PWD</th>
			<td><input type="password" name="password" id="password"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="button" value="�α���" onclick="go()" id="passwordCheck" ></td>
		</tr>
	</table>
</form>
<a href="${pageContext.request.contextPath }/member/findForm">ID/PWD ã��</a>
</body>
</html>