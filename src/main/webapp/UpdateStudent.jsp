<%@page import="com.tka.model.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Student Form</title>
<style type="text/css">
div {
	margin-left: 250px;
	padding: 50px;
	border: 2px solid black;
	width: 30%;
	background-color: teal;
	color: white;
}

#i1 {
	font-size: x-large;
}
</style>
</head>
<body>
	<a href="welcome">Home</a>
	<hr>
	<div>
		<form action="updateStudent" method="post">
			<table>
				<caption id="i1">Student Form to Update</caption>
				<tr>
					<td><label>Student ID : </label></td>
					<td><input type="hidden" name="id" value="${student.id }"></td>
				</tr>
				<tr>
					<td><label>Student Name : </label></td>
					<td><input type="text" name="name" value="${student.name }"></td>
				</tr>
				<tr>
					<td><label>Student Marks : </label></td>
					<td><input type="number" name="marks" value="${student.marks}"></td>
				</tr>
				<tr>
					<td><label>Student UserName : </label></td>
					<td><input type="text" name="username"
						placeholder="use for login" value="${student.username}"></td>
				</tr>
				<tr>
					<td><label>Password : </label></td>
					<td><input type="password" name="password" value="${student.password }"></td>
				</tr>
				<tr>
					<td><input type="submit" value="Update student"></td>
				</tr>
			</table>
		</form>
	</div>
	</form>
</body>
</html>