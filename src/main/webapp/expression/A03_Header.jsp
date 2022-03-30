<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header Expression</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>


	<div class="card-body">

		<h3>Header Expression</h3>

		<div>
			<%  // 다음에 읽을 요소
					Enumeration<String> header = request.getHeaderNames(  );
				while(header.hasMoreElements()){
					String name = header.nextElement();
					String value = request.getHeader(name);
					out.print("<b>"+name+"</b> :"+value+"<br>");
				}
				%><br>
			<hr>
			Host: ${header.host }<br> Connection: ${header.connection }<br>
			Cache-control: ${header["cache-control"] }<br> Upgrade-insecure:
			${header["upgrade-insecure"] }<br> User-agent:
			${header["user-agent"] }<br> Accept: ${header.accept }<br>
			Accept-encoding: ${header["accept-encoding"] }<br>
			Accept-language: ${header["accept-language"] }<br> Cookie:
			${header.cookie }<br>

		</div>

	</div>


</body>
</html>