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
        boolean isReturningUser = false;
        javax.servlet.http.Cookie[] cookies = request.getCookies();
        
        if (cookies != null) {
            for (javax.servlet.http.Cookie cookie : cookies) {
                if ("visited".equals(cookie.getName())) {
                    isReturningUser = true;
                    break;
                }
            }
        }
        
        if (isReturningUser) {
            out.println("Welcome back!");
        } else {
            out.println("Welcome!");
            
            javax.servlet.http.Cookie visitedCookie = new javax.servlet.http.Cookie("visited", "true");
            visitedCookie.setMaxAge(60 * 60 * 24 * 365); // Cookie expires in one year
            response.addCookie(visitedCookie);
        }
    %>
</body>
</html>