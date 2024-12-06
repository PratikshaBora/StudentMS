<%@ page import="com.tka.model.Student" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success Page</title>
</head>
<body>
	<%
		Student s = (Student)request.getAttribute("student");
		String instituteName = (String)request.getAttribute("academy");
	%>
	<a href="welcome">Home</a>
	<h1>Student Data Inserted successfully.</h1>
	
	<pre>
		***********************************
		   		Student Information
			Id    	: <%= s.getId() %> 				
			Name  	: <%= s.getName() %>
			Marks 	: <%= s.getMarks() %>
			Academy : <%= instituteName %>
		
		***********************************
	</pre>
</body>
</html>