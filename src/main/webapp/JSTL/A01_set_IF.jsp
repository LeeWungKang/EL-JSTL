<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
				<title>  </title>
				<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>

			<div class="card-body">
					<h3> SET </h3>
					
					<c:set var="num1"  value="10"  scope="page" /> 
					<!--pageContext.setAttribute("num1", 10)  와 같은 의미.  -->
					<!--value 값에   EL 태그를 삽입할수도 있다.  -->
					<c:set var="num2" value="20" scope= "application" /> 

					<c:set var="result" value="${num1 + num2 }"  />
					result = ${num1 }+${num2 } = ${result }
					
					<hr>
					
					<jsp:useBean id="vo" class="com.bean.PersonVo" />
					<jsp:setProperty property="name" name="vo" value="Bang-Bang"  />
					<jsp:setProperty property="age" name="vo" value="24"  />
					<jsp:setProperty property="address" name="vo" value="수원"  />
							
					Bang-Bang : ${vo.name}  /  ${vo.age}  /  ${vo.address} 
			
					<hr>
					
					<c:set target="${vo }"  property="name" value="Odong"  /> 
					<c:set target="${vo }"  property="age" value="22"  /> 
					<c:set target="${vo }"  property="address" value="부산"  />
					Odong : ${vo.name}  /  ${vo.age}  /  ${vo.address} 
					 
					<hr>
					
					변수삭제 : <br>
					<c:set var="num3" value="ABC" />
					num3 : ${num3 } <br>
					 
					 
					 
					<c:remove var="num3"    />   <!-- 만들어진 객체 삭제   -->
					<c:remove var="vo"    />
					num3 : ${num3 } <br>
					Odong : ${vo.name}  /  ${vo.age}  /  ${vo.address} <br>
					
					<hr>
					
					<h3> IF (단순 IF만 존재)</h3>
					
				<c:if test="${num1 > num2}" >
				${num1} 이 ${num2}보다 크다. <br>
				</c:if>				
					
				<c:if test="${num1 < num2}" >
				${num2} 이 ${num1}보다 크다. <br>	
				</c:if>
				
				<c:if test="${num1 == num2}" >
				${num2} 은  ${num1} 과 같다. <br>	
				</c:if>
				
				<hr>
				
				<H3> Choose (스위치 구문과 비슷, if-slse 구문도 가능)</H3>
				<c:choose>
					<c:when test="${num1 > num2}"> 
									${num1} 이  ${num2}보다 크다. <br>
					</c:when>
					<c:when test="${num1 < num2}"> 
									${num2} 는  ${num1}보다 크다. <br>	
					</c:when>
					<c:when test="${num1 == num2}"> 
									${num2} 은  ${num1} 과 같다. <br>	
					</c:when>
				
				</c:choose>
					
					
					
					
				</div>



</body>
</html>