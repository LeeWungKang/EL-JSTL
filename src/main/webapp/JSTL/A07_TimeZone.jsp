<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   <!--포맷 라이브러리  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> TimeZone </title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>

	<div class="card-bady">
		<h3> TimeZone </h3>
			<c:set var="today"  value="<%=new Date() %>" />
			
			<br> 서울 : 
			<fmt:timeZone value="Asia/Seoul">
				<fmt:formatDate value="${today }" pattern="YYYY/MM/dd EEEE a HH:mm:ss" />
			 </fmt:timeZone>
		
			<br> 뉴욕 :
			<fmt:timeZone value="America/New_York">
				<fmt:formatDate value="${today }" pattern="YYYY/MM/dd EEEE a HH:mm:ss" />
			 </fmt:timeZone>
			 
		<br>
		<hr>
		<br>
		
			<h3> SetTimeZone </h3>
		<br> 서울 :
		<fmt:formatDate value="${today }"  pattern="YYYY/MM/dd EEEE a HH:mm:ss"/>
		<fmt:setTimeZone value="America/New_York"/> <!-- set -->
			
		<br> 뉴욕 :
		<fmt:formatDate value="${today }" pattern="YYYY/MM/dd EEEE a HH:mm:ss" />
		
		<fmt:setTimeZone value="Europe/London"/>  <!-- set -->
		<br> 런던 :
		<fmt:formatDate value="${today }" pattern="YYYY/MM/dd EEEE a HH:mm:ss" />


	</div>

</body>
</html>