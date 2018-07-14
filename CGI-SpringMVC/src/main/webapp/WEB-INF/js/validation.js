$(document).ready(function() {

	$('#errorMessageID1').hide();
	$("#errorMessageID2").hide();

});
function registrationValidation() {
	var employeeName = $('#employeeName').val();
	var employeeMobileNo = $('#employeeMobileNO').val();

	if (employeeName === null || employeeName == "") {
		$('#errorMessageID1').show();
		return false;
	} else if (employeeMobileNo === null || employeeMobileNo == "") {
		$('#errorMessageID2').show();
		return false;
	}
	return true;
}

function clearField(){
	$('#errorMessageID1').hide();
	$("#errorMessageID2").hide();
}

$(document).ready(function() {

	$(function() {

		var url = $("#contextpath").val() + "/HomeAjax/getZips";

		$("#zipCode").autocomplete({

			source : function(request, response) {

				$.ajax({
					url : url,
					type : "GET",
					data : {

						/*term:zipCode*/
						term : request.term
					},
					dataType : "json",
					success : function(data) {

						response($.map(data, function(v, i) {
							return {
								label : v
							};
						}));

					}
				});
			}
		});
	});
});

