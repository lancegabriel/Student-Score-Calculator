$(document).ready(function() {

	$("#missingId").hide();
	$("#wrongId").hide();

	$("#missingPassword").hide();
	$("#wrongPassword").hide();

	let userId = true;
	let userPassword = true;

	function validateUserId() {
		let userIdVal = $("#userId").val();
		if (userIdVal.length == 0) {
			$("#missingId").show();
			$("#wrongId").hide();
			userId = false;
			return false;
		} else if (userIdVal != "user") {
			$("#missingId").hide();
			$("#wrongId").show();
			userId = false;
			return false;
		} else {
			$("#missingId").hide();
			$("#wrongId").hide();
		}
	}

	function validatePassword() {
		let passwordVal = $("#password").val();
		if (passwordVal.length == 0) {
			$("#missingPassword").show();
			$("#wrongPassword").hide();
			userPassword = false;
			return false;
		} else if (passwordVal != "12345") {
			$("#missingPassword").hide();
			$("#wrongPassword").show();
			userId = false;
			return false;
		} else {
			$("#missingPassword").hide();
			$("#wrongPassword").hide();
		}
	}

	$("#submit").click(function() {
		validateUserId();
		validatePassword();
		if (userId == true && userPassword == true) {
			$("#loginForm").submit();
			return true;
		} else {
			return false;
		}
	});

});