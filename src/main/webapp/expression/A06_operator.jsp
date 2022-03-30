<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>  EL  Operator   연산자 </title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>

		<div class="card-body">
      <h3>Operator</h3>
      
      <div class="card-body">
         X = ${param.x }, Y = ${param.y }<br><br>
         X + Y = ${param.x + param.y }<br>
         X - Y = ${param.x - param.y }<br>
         X * Y = ${param.x * param.y }<br>
         X / Y = ${param.x / param.y } / ${param.x div param.y }<br>
         X % Y = ${param.x % param.y } / ${param.x mod param.y }<br><br><br>
         X &lt; Y = ${param.x > param.y } / ${param.x lt param.y }<br>
         X &gt; Y = ${param.x < param.y } / ${param.x gt param.y }<br>
         X == Y = ${param.x == param.y } / ${param.x eq param.y }<br>
         X != Y = ${param.x != param.y } / ${param.x ne param.y }<br>
         X, Y 모두 양수? = ${param.x > 0 && param.y > 0} / ${param.x > 0 and param.y > 0}<br>
         3항 연산자: ${param.x == param.y ? "값은 동일" : "값이 같지 않음" }<br>
         <br>
         
         <br>
         Empty: ${empty param.z }<br>
         Empty: ${empty param.z ? param.z : "0"}<br>
      </div>
      
   </div>


</body>
</html>