<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
});
</script>
</head>
<body>
<c:if test="${empty list }">
 ��ϵ� ��ǰ�� ����. 
</c:if>
<c:if test="${not empty list }">
<table border="1">
<tr><th>�ֹ���ID</th><th>��ǰ��ȣ</th><th>����</th><th>��¥</th><th>����</th>
<c:forEach var="p" items="${list }">
<tr>
	<td>${ p.m_id }</td>
	<td><a href="${ pageContext.request.contextPath }/product/detail?num=${ p.p_num}">${ p.p_num }</a></td>
	<td>${ p.cost }</td>
	<td>${ p.o_date }</td>
	<td>
	<!-- TODO : order/order�� p_num�� ����. -->
	<input type="hidden" id="p_num${ p.p_num }" value="${ p.p_num }">
	<input type="button" class="buy_btn" value="����" onclick="javascript:num='${ p.p_num }'">
	</td>
</tr>
</c:forEach>
</table>
</c:if>
</body>
</html>