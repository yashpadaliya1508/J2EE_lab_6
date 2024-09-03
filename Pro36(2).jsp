<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Error</h1>
Sorry, an error occurred.
<p>
Your page has generated following errors:
<p>
<% exception.printStackTrace(new PrintWriter(out)); %>
</body>
</html>