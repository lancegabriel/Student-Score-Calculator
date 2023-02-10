$(document).ready(function() {
	$('[data-bs-toggle=popover]').popover();
	
	$("#scoreTable").each(function() {
		var prevTD = null;
		var prevMarkTD = null;
		var totalStudentPassed = 0;
		var i = 1;
		var count = 0;
		$("tbody", this).find('tr').each(function() {
			var currTD = $(this).find('td:nth-child(1)');
			var currMarkTD = $(this).find('td:nth-child(4)');
			var currMark = currMarkTD.text();

			if (prevTD == null) {
				if (currMark >= 40) {
					totalStudentPassed = totalStudentPassed + 1;
				}
				count++;
				prevTD = currTD;
				prevMarkTD = currMarkTD;
				i = 1;
			} else if (currTD.text() == prevTD.text()) {
				if (currMark >= 40) {
					totalStudentPassed = totalStudentPassed + 1;

				}
				count++;
				currTD.remove();
				currMarkTD.remove();
				prevMarkTD.attr('rowspan', i + 1);
				prevTD.attr('rowspan', i + 1);
				i = i + 1;
			} else {
				if (count == 0 && currTD.text() != prevTD.text()) {
					count++;
				}
				prevTD = currTD;
				prevMarkTD.html(calculatePassingRate(totalStudentPassed, count));
				prevMarkTD = currMarkTD;
				totalStudentPassed = 0;
				count = 0;
				i = 1;
			}
		});
		if (prevMarkTD.text() >= 40) {
			totalStudentPassed = totalStudentPassed + 1;
		}
		count++;
		prevMarkTD.html(calculatePassingRate(totalStudentPassed, count));
	});

	function calculatePassingRate(studentPassed, numOfStudents) {
		return ((studentPassed / numOfStudents) * 100).toFixed(2).replace(/[.,]0+$/, "");
	}



});