<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>

	<%
		Cookie ck1 = new Cookie("name", "hong");
		Cookie ck2 = new Cookie("num", "1");
		
		response.addCookie(ck1);
		response.addCookie(ck2);
	
	%>
	 <div class="card-body">
	 	<h3> Cookie Value</h3>
	 
	 <div>
	 	<br>	name : ${cookie.name.value }
		<br>	cnt : ${cookie.num.value }	 	
	 </div>
	 
<Hr>
	 
	  <h3>Init Param </h3>
	 <div>
	 	<br>	path : ${initParam.path }
		<br>	email : ${initParam.email }	 	
	 </div>

<Hr>

		<h3>PageContext </h3>
		<div>
	 	<br>	requestURI : ${pageContext.request.requestURI }
	 	<br>	requestAddr : ${pageContext.request.remoteAddr }
	 </div>
		




	 
	 </div>




</body>
</html>