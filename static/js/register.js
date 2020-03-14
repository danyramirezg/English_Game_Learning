$(document).ready(function(){
	var modal = $('#myModal');

	if ($('.errorlist').length) {
		modal.css("display", "block")
	}

	$(window).click(function(){
		modal.css("display", "none");
	});
});

