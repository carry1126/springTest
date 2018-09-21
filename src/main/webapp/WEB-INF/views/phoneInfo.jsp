<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>People PhoneInfo</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
/*
 *여러 자바스크립틑 프레임워크를 함께 사용할 때에는 충돌이 발생할 수 있음
 *총돌을 방지하지 위해서 $.noConflict() 메서드 사용, 메서드를 사용하면 더이상 식별자 $ 대신 jQuery 사용
*/
 //$(document).ready(function(){
	jQuery(document).ready(function(){
		console.log("jQuery 사용");
		
		//.attr(name, value);
		//.val(value);
		//.text(value);
		//.html(tag);
		//.append(tag);
	});
</script>
</head>
<body>
<h3>HI, Welcome to PhoneBook</h3>
<c:choose>
	<c:when test="${fn:length(result) > 0 }">
			<table border=1>
				<colgroup>
					<col width="10%" />
					<col width="30%" />
					<col width="5%" />
				</colgroup>
				<thead>
					<tr>
						<th scope="col">이름</th>
						<th scope="col">전화번호</th>
						<th scope="col">나이</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${result }" var="row">
					<tr>
						<td>${row.name }</td>
						<td>${row.phone }</td>
						<td>${row.age }</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
	</c:when>
	<c:otherwise>
		 	No selected.
	</c:otherwise>
</c:choose>
</body>
</html>