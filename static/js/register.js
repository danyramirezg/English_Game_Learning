function funValidateForm(){
    funMessageObject('username', 'User name is mandatory!', '');
    funMessageObject('password', 'Password is mandatory!', '');
    funMessageObject('confirm_password', 'Confirm Password is mandatory!', '');
    funMessageObject('email', 'Email is mandatory!', 'Enter a valid email address');
    funMessageObject('word', 'Word Attempt is mandatory!', '');
    funComparePass('password', 'confirm_password');
    funValidateFormatPass('password', 'Your password must have at least, 1 capital letter, 1 lowercase, 1 number, 1 special character !#$%&/@, Length from 8 to 12 characters');
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

function funValidateFormatPass(ObjectPass, Message){
    var pass = document.getElementById(ObjectPass);
    if (pass.validity.patternMismatch) {
        pass.setCustomValidity(Message);
    } else {
        pass.setCustomValidity('');
    }
}