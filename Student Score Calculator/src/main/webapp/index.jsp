<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<title>Student Score Calculator Login</title>
</head>

<body>
	<div class="container" style="margin-top: 30px">
		<div class="col-md-6" style="margin-left: 300px">
			<div class="panel panel-default">
				<div class="panel-body">
					<form role="form" action="loginServlet" method="post"
						id="loginForm">
						<div class="form-group">
							<div class="row">
								<div class="col-md-2">
									<label for="userId">User ID</label>
								</div>
								<div class="col-md-9">
									<input type="text" name="userId" class="form-control"
										id="userId" placeholder="Enter User ID">
									<h5 id="missingId" style="color: red;">Please key in a
										user ID!</h5>
									<h5 id="wrongId" style="color: red;">Wrong ID! Please try
										again.</h5>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-2">
									<label for="password">Password</label>
								</div>
								<div class="col-md-9">
									<input type="password" name="password" class="form-control"
										id="password" placeholder="Enter Password">
									<h5 id="missingPassword" style="color: red;">Please key in
										a password!</h5>
									<h5 id="wrongPassword" style="color: red;">Wrong password!
										Please try again.</h5>
								</div>
							</div>

						</div>
						<div class="col-md-12 text-center">
							<button type="submit" id="submit" class="btn btn-sm btn-default">Login</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="scripts/validation.js"></script>
</body>
</html>