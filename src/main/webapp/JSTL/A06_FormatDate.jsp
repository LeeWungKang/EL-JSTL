<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   <!--포맷 라이브러리  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Format_Date </title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>

		<div class="card-bady">
		<h3> FormatDate </h3>
		</div>
		
		<div>
			<c:set value="<%=new Date() %>"  var="today"/>
		<br>	오늘의 날짜 : <fmt:formatDate value="${today }"  type="both"/>
		<br>	오늘의 날짜 : <fmt:formatDate value="${today }"  type="date"  pattern="YYYY-MM-dd(aaaaa)"/>
		<br>	현재의 시간 : <fmt:formatDate value="${today }"  type="time"  />
		
	<hr>
		
			<br>	오늘의 날짜 full : <fmt:formatDate value="${today }"  type="both" dateStyle="full" />
			<br>	오늘의 날짜 long : <fmt:formatDate value="${today }"  type="both" dateStyle="long" />
			<br>	오늘의 날짜 short : <fmt:formatDate value="${today }"  type="date" dateStyle="short" />
			<br>	오늘의 날짜 medium : <fmt:formatDate value="${today }"  type="date" dateStyle="medium" />
		
	<hr>
		
			<br>	현재의 시간 full : <fmt:formatDate value="${today }"  type="time"  timeStyle="full"  />
			<br>	현재의 시간 long : <fmt:formatDate value="${today }"  type="time"  timeStyle="long" />
			<br>	현재의 시간 short : <fmt:formatDate value="${today }"  type="time"  timeStyle="short"  />
			<br>	현재의 시간 medium : <fmt:formatDate value="${today }"  type="time"  timeStyle="medium" />
		</div>

	<hr>
		
			<br>	현재의 날짜 & 시간 : <fmt:formatDate value="${today }"  type="both"  dateStyle="full"  timeStyle="full" />
			<br>	현재의 날짜 & 시간 : <fmt:formatDate value="${today }"  type="both"  dateStyle="long"  timeStyle="long" />
			<br>	현재의 날짜 & 시간 : <fmt:formatDate value="${today }"  type="both"  dateStyle="short"  timeStyle="short" />
			<br>	현재의 날짜 & 시간 : <fmt:formatDate value="${today }"  type="both"  dateStyle="medium"  timeStyle="medium" />

	<hr>
	
			<br> Patten : <fmt:formatDate value="${today }"  pattern="YYYY/MM/dd EEEE a HH:mm:ss " />
			<br> Patten : <fmt:formatDate value="${today }"  pattern="yy/m/d E a h:m:s " />











</body>
</html>