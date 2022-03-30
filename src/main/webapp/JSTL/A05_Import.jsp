<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>	Import	</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>

	<div class="card-body" >
		<h3> Import </h3>
	
		<c:import url="A04_Catch.jsp"  >
		
			<c:param name="x" value="100"/>   
			<c:param name="y" value="200"/>
		  </c:import>

<hr>	
			<h3> URL </h3>
			<br> set과 동일한 기능이지만, URL을 저장하기 위한 용도로 사용함.
			
			<br> <c:url var="A4" value="A04_Catch.jsp"  />
			<c:import url="${A4}"  >
			<c:param name="x" value="100"/>   
			<c:param name="y" value="200"/>
		  </c:import> 
					
	
	
	
	
	
	
	</div>


</body>
</html>