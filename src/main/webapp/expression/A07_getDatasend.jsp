<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> GET data   배열객체 EL 받아오기  </title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>

<!--   request.setAttribute		("name", name);  배열 스트링 객체
		request.setAttribute		("list", list);       어레이리스트
		request.setAttribute		("map", map);    해쉬 맵
		request.setAttribute		("vo", vo);        vo
 -->

		<div class="card-body">
			<h3> Get data </h3>
			<!-- 배열을 벗어난 인덱스는 에러처리하지않고,  빈값으로 표현해줌  -->
		 <br>	NAME :  ${name[0]}  / ${name[1]}  /  ${name[10]}	 		
	
			<!--ArrayList는 존재하지 않는 인덱스는 에러로 표시한다.  -->
	<br><br>	ArrayList : ${list.get(0)}  /  ${list.get(1)}  /  ${list.get(2)}
		
		
	<br><br>  Map :  ${map.get("one")}  /  ${map.get("two")}  /  ${map.get("three")} 
		
		
	<br><br> Vo : ${vo.name}  /  ${vo.age}  /  ${vo.address}  
		</div>
		



</body>
</html>