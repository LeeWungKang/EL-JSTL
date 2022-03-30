<%@page import="java.util.Locale"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   <!--포맷 라이브러리  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> FormatNumber </title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>

	<div class="card-bady">
		<h3> FormatNumber </h3>

		<c:set  var="num"   value="1231234"/>
		
		<br> <fmt:formatNumber value="${num}"  groupingUsed="true"/>  <!-- 천단위 구분 기호 적용  -->
		<hr>
		<br># 표기 : <fmt:formatNumber value="${num}"  pattern="0.##" />
		<br># 표기 : <fmt:formatNumber value="${num}"  pattern="#,###.##" />
		<br># 표기 : <fmt:formatNumber value="${num}"  pattern="#,##,##.##" />
		
		<hr>
		
		<br>0 표기 : <fmt:formatNumber value="${num}"  pattern="0.0" />
		<br>0 표기 : <fmt:formatNumber value="${num}"  pattern="0,000.00" />
		<br>0 표기 : <fmt:formatNumber value="${num}"  pattern="0,00,00.00" />
		<br># ,0 표기 : <fmt:formatNumber value="${num}"  pattern="#,###.00" />
		
		<hr>
		
			<br>% 표기 : <fmt:formatNumber value="${num}"  type="percent" />        ( type="percent" )
			<br>화폐 표기 : <fmt:formatNumber value="${num}"  type="currency" />    ( type="currency")
		
			<br>화폐 표기 : <fmt:formatNumber value="${num}"  type="currency" currencySymbol="$" />
			<br>화폐 표기 : <fmt:formatNumber value="${num}"  type="currency" currencyCode="EUR" />
		
		 <hr>
		 
			 <c:set var="today"  value="<%=new Date() %>" />
			 
		 	<h3>setLocale </h3>  <!-- 지역설정  -->
			
			<br> 대한민국 :  <br>
				<fmt:setLocale value="ko_kr" />
				<br> 금액 :	<fmt:formatNumber value="${num }"  type="currency" />
				<br> 날짜 :	<fmt:formatDate value="${today}"  pattern="YYYY/MM/dd EEEE a HH:mm:ss" /> <br>
			
			 <br> 미국 : <br>
				<fmt:setLocale value="en_us" />
				<br> 금액 :	<fmt:formatNumber value="${num }"  type="currency" />
				<br> 날짜 :	<fmt:formatDate value="${today}"  pattern="YYYY/MM/dd EEEE a HH:mm:ss" /> <br>
				
			<br> 대만 : <br>
				<fmt:setLocale value="zh_tw" />
				<br> 금액 :	<fmt:formatNumber value="${num }"  type="currency" />
				<br> 날짜 :	<fmt:formatDate value="${today}"  pattern="YYYY/MM/dd EEEE a HH:mm:ss" /> <br>

		<hr>
		<!-- 각 나라별 사용 언어와, 지역명 -->
		<% 
			for(Locale local: Locale.getAvailableLocales()){
				out.print("getCountry" + local.getCountry()+"<br>");
				out.print("getLanguage" + local.getLanguage()+"<br>");
				out.print("getDisplayName" + local.getDisplayName()+"<br>");
				out.print("getDisplayLanguage" + local.getDisplayLanguage()+"<br>");
				out.print("getDisplayCountry" + local.getDisplayCountry()+"<br>");
				out.print("<br>");
			}
		%>					 
		 
	</div>

</body>
</html>