var url = window.location.href;
var urlParts = url.split("/");

var endpoint = urlParts[0] + "//" + urlParts[2] + "/api.php";


$(document).ready(function() {


	console.log(quotes);

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