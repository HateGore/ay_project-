<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>�ֹ�����</h3>
<table border="1" cellspacing="0">
	<tr>
		<th>��ǰ��</th><th>�ֹ�����</th><th>����</th><th>�����ݾ�</th>
	</tr>
	<tr>
		<td>${ order.p.name }</td><td>${ order.quantity }</td><td>${ order.p.price }</td><td>${ order.quantity * order.p.price }</td>
	</tr>
</table>
<form action="${ pageContext.request.contextPath }/order/order" method="post">
����� �ּ� : <input type="text" name="address" value="${ order.m.address }"><br>
���� ��� ��ȭ��ȣ : <input type="text" name="tel" value="${ order.m.tel }"><br>
<input type="submit" value="����">
<input type="hidden" name="m_id" value="${ sessionScope.id }">
<input type="hidden" name="p_num" value="${ order.p_num }">
<input type="hidden" name="quantity" value="${ order.quantity }">
<input type="hidden" name="cost" value="${ order.quantity * order.p.price  }">
<input type="hidden" name="state" value="0">
</form>
</body>
</html>