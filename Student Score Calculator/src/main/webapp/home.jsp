<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<title>Student Score Calculator Home Page</title>
</head>
<body>
	<div class="container" style="margin-top: 50px">
		<div class="col-md-6" style="margin-left: 300px">
		<h3>Welcome User!</h3><br>
		<table class="table table-dark table-striped" id="scoreTable" border="1" >
			<thead>
				<tr style="background-color: #055099; color: #fff">
					<td>Department</td>
					<td>Student Id</td>
					<td>Marks</td>
					<td>Pass %</td>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="student" items="${studentList}" varStatus="i">
			<tr>
					<td>${student.department}</td>
					<td>${student.studentId}</td>
					<td>${student.mark}</td>
					<td>${student.mark}</td>		
			</tr>
			</c:forEach>
			</tbody>
		</table>

		</div>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="scripts/helper.js"></script>

</body>
</html>