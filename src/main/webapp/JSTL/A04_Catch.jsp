<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>

	<div class="card-body" >
		<h3> Catch </h3>
		<!--넘길변수를 같이 포함시켜서 다른 페이지로   -->
		
			<br> ${param.x } + ${param.y } = ${param.x + param.y } <br>
		
		
			<c:catch var="error">
				<% 
				int x =Integer.parseInt(request.getParameter("x"));
				int y =Integer.parseInt(request.getParameter("y"));
				%>
				<%=x %>+ <%=y %> = <%=x + y %>
			</c:catch>
			<br>
			<c:if test="${!empty error }"/>        <!--만약에 변수 'error'가 빈값이 아니면 -->   
			Error : ${error }
			
	</div>


</body>
</html>