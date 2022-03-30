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

		<div class="card-body">
			<h3> arraylist,  For 반복문으로 받기 </h3>
			
		<%-- 	
			<c:set var="result"  value="0" />
			<c:forEach var="i"  begin="1" end="10" step="1"  >    
				<c:set var="result"  value=  "${result+i }"   />
			 </c:forEach>
			 1~10 까지의 result : ${result }   <br>
			 
			  --%>
			 
			 <hr>
			 
				 <h5> array </h5>
			 <c:forEach items="${name}"  var="item">
			 <br>  ${item }   
			 </c:forEach>
			 <br>
			 
			 	 <h5> arrayList </h5>
			 <c:forEach items="${list}"  var="item">
			 <br>  ${list }   
			 </c:forEach>
			 <br>
			 	 	<h5> map </h5>
			 <c:forEach items="${map}"  var="item">
			 <br>  ${map}   
			 </c:forEach>
			 <br> 
			 <hr>
			  	 	<h5> arrayList(personVo) </h5>
			 <c:forEach items="${personList}"  var="item">
			 <br>  ${item.name}  /  ${item.age}  /  ${item.address}   
			 </c:forEach>
			 
			 
			 <table class="table">
			 	<tr>
				 	<th>Value</th>
				 	<th>Current</th>
				 	<th>Index</th>
				 	<th>Count</th>
				 	<th>First</th>
				 	<th>Last</th>
			 	</tr>
			 	<c:forEach items="${personList }"  var="item" varStatus="status"> 
			 	<tr>
			 		<td>${item.name } </td>
			 		<td>${status.current.name } </td>
			 		<td>${status.index } </td>
			 		<td>${status.count } </td>
			 		<td>${status.first } </td>
			 		<td>${status.last } </td>
			 	</tr>
			 	</c:forEach>
			 </table>
			 
			 <hr>
			 <!-- 공백을 기준으로 문자를 토큰 나눔 -->
			 <c:forTokens items="사과 바나나 수박" delims=" " var="item">  
			 	${item}
			 </c:forTokens>
			 
			 <c:set var="str" value="사과-바나나* 수박/포도"  />
			 <c:forTokens items="${str}" delims="-*/ " var="item2">
			 	${item2 }
			 </c:forTokens>
			 
		</div>





</body>
</html>