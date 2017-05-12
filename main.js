$(document).ready(function() {

	var maxKeyValue = Object.keys(quotes).length -1;
	var container = $('.container');

	function getRandomQuote() {
		var num = (Math.random() * maxKeyValue).toFixed(0);
		setNewQuote(quotes[num]);
	}

	function setNewQuote(quote) {
		var quoteText = $('#quote__text');

		quoteText.html(quote.quote);
		$('#quote__author').html(quote.author);
	}

	getRandomQuote();

	$('footer').on('click', function () {
		getRandomQuote();
	});

});