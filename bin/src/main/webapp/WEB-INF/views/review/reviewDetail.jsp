<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
   <table border="1" cellspacing="0">
      <thead>
         <tr>
            <th>��ȣ</th>
            <td><input type="text" name="num" value="${r.num}" readonly></td>
         </tr>
           <tr>
            <th>��ǰ��ȣ</th>
            <td>${r.pnum}</td>
         </tr>
           <tr>
            <th>����</th>
            <td><a href="${pageContext.request.contextPath }/review/reviewDetail">${r.title}</a></td>
         </tr>
           <tr>
            <th>�ۼ���</th>
            <td>${r.writer}</td>
         </tr>
           <tr>
            <th>����</th>
            <td>${r.content}</td>
         </tr>
           <tr>
            <th>�ۼ���¥</th>
            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${r.pdate}" /></td>
         </tr>
         <tr>
         
          
      </thead>
     
    
     
   </table>
</body>
</html>