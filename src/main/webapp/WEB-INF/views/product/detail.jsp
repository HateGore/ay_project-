<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
// ���� ������ ��� admin ���������� �Ѿ����.
$(document).ready(function() {
	$(".img").mouseover(function() {
		$("#bigImg").attr('src', this.src);
	});
	
	$("#cart").click(function() {
		var m_id = $("#m_id").val();
		var p_num = $("#p_num").val();
		var cost = $("#cost").val();
		alert(m_id + " + " + p_num + " + " + cost);
		$.post("/cart/addCart", { m_id: m_id, p_num: p_num, cost: cost })
		.done(function(data) {
			// �ߺ� �Ұ����ϰ� �ϴ°� �������� ����.
			alert("��ٱ��Ͽ� �߰��Ǿ����ϴ�!");
		});
	});
	
});	
</script>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h5>���� id : ${ sessionScope.id }</h5>
<h3>��ǰ �� ����</h3>
<form action="${ pageContext.request.contextPath }/order/orderForm" method="post">
<table border="1" cellspacing="0">
<tr>
<th>��ȣ</th>
<td><input type="text" name="p_num" id="p_num" value="${p.num }" readonly="readonly">
</td>
</tr>
<tr>
	<th>��ǰ�̹���</th>
	<td><c:if test="${empty file0 }">
					��ϵ� �̹����� �����ϴ�.
					</c:if> 
					<c:if test="${not empty file0 }">
					<table>
						<tr>
							<td colspan="3">
							<img id="bigImg" src="${pageContext.request.contextPath }/product/img?fname=${file0 }&num=${p.num }" 
							style="width:150px;height:150px"></td>
						</tr>
						<tr>
							<td><img src="${pageContext.request.contextPath }/product/img?fname=${file0 }&num=${p.num }" class="img" width="50" height="50"></td>
							<td><img src="${pageContext.request.contextPath }/product/img?fname=${file1 }&num=${p.num }" class="img" width="50" height="50"></td>
							<td><img src="${pageContext.request.contextPath }/product/img?fname=${file2 }&num=${p.num }" class="img" width="50" height="50"></td>
					</table>
				</c:if></td>
<tr>

<tr>
<th>��ǰ��</th>
<td><input type="text" value="${p.name }" readonly="readonly">
</td>
</tr>

<tr>
<th>����Ŀ</th>
<td><input type="text" value="${p.maker }" readonly="readonly">
</td>
</tr>

<tr>
<th>����</th>
<td><input type="text" id="cost" value="${p.price }" readonly="readonly">
</td>
</tr>

<tr>
<th>������</th>
<td><input type="text" value="${p.origin }" readonly="readonly">
</td>
</tr>

<tr>
<th>���</th>
<td><input type="text" value="${p.material }" readonly="readonly">
</td>
</tr>

<tr>
<th>���¼���</th>
<td><input type="text" value="${p.quantity }" readonly="readonly"></td>
</tr>

<tr>
<th>�ֹ�����</th>
<td><input type="text" name="quantity"></td>
</tr>



<tr>
<td colspan="2">
	<input type="hidden" name="m_id" id="m_id" value="${ sessionScope.id }"><input type="submit" value="����">
	<input type="button" value="��ٱ��Ϸ�" id="cart">
</td>
</tr>
</table>

</form>
</body>
</html>