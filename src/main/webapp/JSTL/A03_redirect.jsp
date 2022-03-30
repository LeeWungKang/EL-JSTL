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
		<h3>Redirect </h3>
		<!--넘길변수를 같이 포함시켜서 다른 페이지로   -->
		
		<c:redirect url="A04_Catch.jsp">
			<c:param name="x" value="10" />
			<c:param name="y" value="33" />
		</c:redirect>
	</div>



</body>
</html>