$(document).ready(function() {

	var maxKeyValue = Object.keys(quotes).length -1;

	function getRandomQuote() {
		var num = (Math.random() * maxKeyValue).toFixed(0);
		var quote = quotes[num];

		$('#quote__text').html(quote.quote);
		$('#quote__author').html(quote.author);
	}

	getRandomQuote();

	$('#new-quote').on('click', function () {
		getRandomQuote();
	});

});