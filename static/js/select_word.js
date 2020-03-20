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


function funAddWord(){
    var word = prompt ("Add Word:");
    if(!word == "" || !word == null){
       var selOption = document.getElementById('SelWordNew');
       var option = document.createElement("option");
       option.text = word;
       option.value = -9;
       selOption.add(option);
    }
}