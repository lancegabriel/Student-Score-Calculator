<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<link rel="stylesheet" href="styles/custom.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- include bootstrap JavScript library -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="scripts/helper.js"></script>
<title>Student Score Calculator Home Page</title>
</head>
<body>
	<div class="container" style="margin-top: 50px">
		<div class="col-md-6" style="margin-left: 300px">
			<h3>Welcome User!</h3>
			<br>
			<table class="table table-dark table-striped" id="scoreTable"
				border="1">
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
							<!--  	<td><div class="popup" onclick="clickPopUp()">
									<span class="popuptext" id="myPopup">${student.studentName}</span>
									<a href="#" id="studentId">${student.studentId}</a>
								</div></td>-->
							<td><a href="#" id="pop" 
								data-trigger="focus"
								data-content="${student.studentName}"
								data-html="true"
								data-bs-toggle="popover" 
								class="btn btn-secondary popover-test">${student.studentId}</a>

							</td>
							<td>${student.mark}</td>
							<td>${student.mark}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>