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


	<div class="card-body">
		<h3> Form value Exepression </h3>
	
		<div>
			<br>Name : ${param.name}
			<br>Id : ${param.id}
			<br>Password : ${param.password}
			<br>Date : ${param.date}
			<br>Comment : ${param.comment}
			<br>baseball : ${param.baseball}
			<br>base : ${param.base}
			
			<!--four는 체크박스, 여러개 데이터가 넘어올 수 있다.  -->
			<br>four : ${param.four}
			<br>four[] : ${paramValues.four[0]}   /  ${paramValues.four[1]}  /
							${paramValues.four[2]}   /  ${paramValues.four[3]}  /
							${paramValues.four[4]} 
			
			<br>five : ${param.five}
			<br>five[] : ${paramValues.five[0]}   /  ${paramValues.five[1]}  /
							${paramValues.five[2]}   /  ${paramValues.five[3]}  /
							${paramValues.five[4]} 
		</div>
	
	
	
	</div>




</body>
</html>