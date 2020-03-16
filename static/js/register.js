/*$(document).ready(function(){
	var modal = $('#myModal');

	if ($('.errorlist').length) {
		modal.css("display", "block")
	}

	$(window).click(function(){
		modal.css("display", "none");
	});
});*/

function funValidateForm(){
    funMessageObject('username', 'Username is mandatory!', '');
    funMessageObject('password', 'Password is mandatory!', '');
    funMessageObject('confirm_password', 'Confirm Password is mandatory!', '');
    funMessageObject('email', 'Email is mandatory!', 'Enter a valid email address');
    funMessageObject('word', 'Word Attempt is mandatory!', '');
    funComparePass('password', 'confirm_password');
}

function funMessageObject(nameObject, txtMessagePpal, txtMessageOther) {
    var object = document.getElementById(nameObject);   
    if (object.validity.valueMissing){
        object.setCustomValidity(txtMessagePpal);
    }else{
        if (object.validity.typeMismatch){
            object.setCustomValidity(txtMessageOther);
        }else{
            object.setCustomValidity('');
        }
    }
}

function funComparePass(ObjectPass, ObjectConfPass){
    var pass = document.getElementById(ObjectPass).value;
    var confPass = document.getElementById(ObjectConfPass).value;
    var object = document.getElementById(ObjectConfPass);
    if (pass != confPass){
        object.setCustomValidity('Passwords do not match');
    }
}

