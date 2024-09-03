<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
        String visited = (String) session.getAttribute("visited");

        if (visited == null) {
            session.setAttribute("visited", "true");
            out.println("<h1>Welcome!</h1>");
        } else {
            out.println("<h1>Welcome back!</h1>");
        }
    %>
</body>
</html>