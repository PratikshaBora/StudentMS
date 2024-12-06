<%@page import="com.tka.model.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Data</title>
<style>
h1{
	color: navy;
	text-align: center;
}
table, th, td {
	border: 2px solid green;
	margin: auto 360px;
}
td,th{
	padding: 10px;
	spacide: 5px;
}
a{
	text-decoration: none;
	color : maroon; 
}
a:hover{
	color : blue;
}
p{
	text-align: right;
}
</style>
</head>
<body>
	<p><a href="welcome">Home</a></p>
	<hr>
	<%
	List<Student> list = (List<Student>) request.getAttribute("studentList");
	%>
	<h1>Student Details</h1>
	<table>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Marks</th>
			<th>Actions</th>
		</tr>
		<tbody>
			<%
			for (Student s : list) {
			%>
			<tr>
				<td><%=s.getId()%></td>
				<td><%=s.getName()%></td>
				<td><%=s.getMarks()%></td>
				<td><a href="updateStudentForm?id=<%=s.getId()%>">Update</a>&nbsp;&nbsp;
					<a href="deleteStudent?id=<%=s.getId()%>"
					onclick="return confirm('Are you sure you want to delete this student?')">Delete</a>
				</td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>

</body>
</html>