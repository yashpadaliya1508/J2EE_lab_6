<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
page may generate an error
<%
	int x = 1;
	if (x == 1)
	{
		throw new RuntimeException("Oh no!!!");
	}
%>
</body>
</html>