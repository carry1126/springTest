<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>People PhoneInfo</title>
</head>
<body>
<h3>HI, Welcome to PhoneBook</h3>
<c:choose>
	<c:when test="${fn:length(result) > 0 }">
			<table>
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