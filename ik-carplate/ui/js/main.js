var carCategories = [];
var curCat = 0;
var blackMoney = false;
var intv = null;
var curTest = 15;

$(window).ready(function() {
    window.addEventListener('message', (event) => {
        let data = event.data;
        if (data.action == "load"){
            $("#wrap").show();
            $("body").show();
            $(".plaka").css("display", "block")
			// init(data);
        }
    });
});

$(document).on('keydown', function() {
    switch(event.keyCode) {
        case 27:
            plakaiptal();
            break;
    }
});

var plate = "";
function plakaonay() {
    plate = "";
    $('.inp').each(function(i, obj) {
        plate = plate + obj.value;
    });

    $.post("https://ik-carplate/acceptplate", JSON.stringify({plate: plate}), function(x){
       if(x == true) { plakaiptal(); }
    });
}

function plakaiptal() {
    $("#wrap").hide();
    $("body").hide();
   $(".plaka").css("display", "none");
   $.post("https://ik-carplate/close", JSON.stringify({}), function(x){});
}
