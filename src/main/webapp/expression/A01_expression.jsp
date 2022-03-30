<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>

		<div class="card-body">
			<!-- 순서		 Page => Request =>Session => Application		 -->
		<h3> Expression Language</h3>
		
		<%
		 pageContext.setAttribute("name", "PageContext Scope");
		pageContext.setAttribute("address", "부산");
		
		%>
		</div>


		<div style="padding: 30px;">
		 	이름이 동일한 경우(set name) 우선 순위.  <br>
		 	PageContext  >  request  >  Session  > Application  <br>
		 	
			page : ${name}
		</div>
<hr>		
		<div style="margin-left: 130px;">
			Session   <br>
			Name : ${sessionScope.name } <br>
			PW : ${passwd } <br>
			VO : ${sessionScope.vo.name }   /   ${sessionScope.vo.age }   /   ${sessionScope.vo.address }    
			<!--vo.getName '' 과 같은 의미  -->
		
		</div>
<hr>
		<div style="margin-left: 130px;">
			Request   <br>
			Name : ${requestScope.name } <br>
			DEPT : ${dept } <br>
			VO : ${requestScope.vo.name }   /   ${requestScope.vo.age }   /   ${requestScope.vo.address }    
			<!--vo.getName '' 과 같은 의미  -->
		
		</div>
<hr>		
		<div style="margin-left: 130px;">
			Context   <br>
			Name : ${applicationScope.name } <br>
			ID : ${id } <br>
			request =&gt; ${vo.name } / ${vo.age } / ${vo.address }
			<!--vo.getName '' 과 같은 의미  -->
		
		</div>
		

</body>
</html>