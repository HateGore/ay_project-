<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>

	
	function del(){
		location.href="/review/delReview";
		
	}
</script>
</head>
<body>
<form name="f" method="POST" action="${pageContext.request.contextPath }/review/editReview">
   <table border="1" cellspacing="0">
      <thead>
         <tr>
            <th>��ȣ</th>
            <td><input type="text" name="num" value="${r.num}" readonly></td>
         </tr>
           <tr>
            <th>��ǰ��ȣ</th>
            <td><input type="text" name="pnum" value="${r.pnum}" readonly></td>
         </tr>
           <tr>
            <th>����</th>
            <td><input type="text" name="title" value="${r.title }"></td>
         </tr>
           <tr>
            <th>�ۼ���</th>
            <td>${r.writer}</td>
         </tr>
           <tr>
            <th>����</th>
            <td><input type="text" name="content" value="${r.content}"></td>
         </tr>
           <tr>
            <th>�ۼ���¥</th>
            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${r.pdate}" /></td>
         </tr>
         <tr>
         	<td colspan="2">
         		<input type="submit" value="����">
         		<input type="button" value="����" onclick="del()">
         	</td>
         </tr>
          
      </thead>
     
    
     
   </table>
   </form>
</body>
</html>