<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
var sessionId = '<%=session.getAttribute("id") %>'

	$(document).ready(function(){ //�α��� �Ǿ��ִ��� Ȯ���ϱ�
		$("#write").click(function(){
			if(sessionId == '' || sessionId == 'null'){
			alert("�α��� �Ŀ� �̿��� �� �ֽ��ϴ�.");
			location.href= "${pageContext.request.contextPath }/member/loginForm";
		} else {
			//�α��� �ȵǾ�������
			location.href="${pageContext.request.contextPath }/board/writeForm";
		}});
	});
</script>
</head>
<body>
	<!-- ��������, ���ǻ��� ����Ʈ -->
	<h3>������</h3>
	<table border="1" cellspacing="0">
		<thead>
			<tr>
				<th>��ȣ</th>
				<th>����</th>
				<th>�ۼ���</th>
				<th>�����</th>
			</tr>
		</thead>
		<c:forEach var="b" items="${list}">
			<tr>
				<td><c:out value="${b.num}" /></td>
				<td><a href="${pageContext.request.contextPath }/board/detail?num=${b.num } ">${b.title} </a></td>
				<td><c:out value="${b.writer}" /></td>
				<td><fmt:formatDate pattern="yyyy-MM-dd" value="${b.b_date}" /></td>
			</tr>
		</c:forEach>
	</table>
	���Ǿ��̵� : <c:out value="${sessionScope.id}" />
	<input type="button" id ="write" value="�۾���">
	
</body>
</html>