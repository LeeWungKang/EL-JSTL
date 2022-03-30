<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<form action="A06_operator.jsp"  method="get">
		<table class="table">
			<tr>
				<td>X:</td>
				<td><input type="text" name="x" size="30"></td>
			</tr>
			<tr>
				<td>Y:</td>
				<td><input type="text" name="y" size="30"></td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit" value="전송"> <input
					type="reset" value="리셋">
			</tr>
		</table>
</form>
	</div>
	
	
	
	
</body>
</html>