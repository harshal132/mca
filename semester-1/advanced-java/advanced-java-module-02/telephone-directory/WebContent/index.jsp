<%--
Document : index
Created on : 04-13-2021
Author : Harshal Chavan
Create a Telephone directory using JSP and store all the information within a database, so that later
could be retrieved as per the requirement. Make your own assumptions.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Practical 6-1</title>
	</head>
	<body>
		<form action="process.jsp">
			<table align="center">
				<tr align="center">
					<td style="color:red;padding:10px">${param.message}</td>
				</tr>
			</table>
			<table border="1" align="center" cellpadding="10px">
				<thead>
					<tr align="center">
						<th colspan="2" style="background-color: yellow; padding: 10px">Telephone-Entry-Form</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Name</td>
						<td><input type="text" name="txtName" value="" /></td>
					</tr>
					<tr>
						<td>Telephone Number</td>
						<td><input type="text" name="txtTel" value="" /></td>
					</tr>
					<tr>
						<td><input type="submit" value="Add Entry" /></td>
						<td><input type="reset" value="Reset" /></td>
					</tr>
				</tbody>
			</table>
		</form>
	</body>
</html>