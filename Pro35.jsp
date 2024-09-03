<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="employee" class="com.example.EmployeeBean" scope="session" />

<!-- Set properties of the EmployeeBean -->
<jsp:setProperty name="employee" property="name" value="Vishal" />
<jsp:setProperty name="employee" property="designation" value="Manager" />
<jsp:setProperty name="employee" property="salary" value="63000.00" />

<h2>Employee Details</h2>

<p>Name: <jsp:getProperty name="employee" property="name" /></p>
<p>Designation: <jsp:getProperty name="employee" property="designation" /></p>
<p>Salary: <jsp:getProperty name="employee" property="salary" /></p>

<!-- Alternatively, using Java expression tags -->
<p>Name: ${employee.name}</p>
<p>Designation: ${employee.designation}</p>
<p>Salary: ${employee.salary}</p>
	

</body>
</html>