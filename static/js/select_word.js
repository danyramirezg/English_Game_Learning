function funAssingWord(){
    $('#SelWordAct option:selected').appendTo($('#SelWordNew'));
}

function funAllAssingWord(){
    $('#SelWordAct option').appendTo($('#SelWordNew'));
}

function funUnAssingWord(){
    var resp = confirm("Are you sure you want to delete the word?")
    if (resp == true){
        $('#SelWordNew option:selected').appendTo($('#SelWordAct'));
    }
}

function funAllUnAssingWord(){
    var resp = confirm("Are you sure you want to delete the all words?")
    if (resp == true){
        $('#SelWordNew option').appendTo($('#SelWordAct'));
    }
}