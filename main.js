var url = window.location.href;
var urlParts = url.split("/");

var endpoint = urlParts[0] + "//" + urlParts[2] + "/api.php";


$(document).ready(function() {


	function apiCall(mode) {
		var returnJSON = undefined;
		$.ajax({
			type: "GET",
			url: endpoint,
			data: {
				mode: mode
			},
			async: false,
			complete: function (response) {
				if(response.status == 200) {
					returnJSON =  $.parseJSON(response.responseText);
				} else {
					console.error("HTTP ERROR");
					console.error(response);
				}
			}
		});

		return returnJSON;
	}

	function getRandomQuote() {
		var quote = apiCall("random");
		$('#quote__text').html(quote[0].quote);
		$('#quote__author').html(quote[0].author);
	}

	getRandomQuote();

	$('#new-quote').on('click', function () {
		getRandomQuote();
	});

});