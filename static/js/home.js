$(document).ready(function(){
	$('button#play').click(function(){
		window.location.href = "http://localhost:8000/snake";
	});
	$('button#login').click(function(){
		window.location.href = "http://localhost:8000/login";
	});
	$('button#sign_up').click(function(){
		window.location.href = "http://localhost:8000/register";
	});
});
