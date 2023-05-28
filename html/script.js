$(function () {

    function display(bool) {
        if (bool) {
            $("html").show();
        } else {
            $("html").hide();
        }
    }
    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type == "show") {
            if (item.status == true) {
                $("html").fadeIn();
                $("#rnb-box").show();
                display(true)
            } else {
                display(false)
            }
        }
    })  
    document.onkeyup = function (data) {
        if (data.which == 27) {
            $("#rnb-box").hide();
            $("#rnb-box-appistol").hide();
            $("#rnb-box-smg").hide();
            $("#rnb-box-sawnoffshotgun").hide();
            $("#rnb-box-carbinerifle_mk2").hide();
            $("#rnb-box-gusenberg").hide();
            $("html").fadeOut("slow");
            $.post('https://ng_blackcraft/close', JSON.stringify({}));
            return
        }
    };  

    $("#change-btn-knuckle").click(function () {
        $("#rnb-box").hide();
        $("#rnb-box-appistol").hide();
        $("#rnb-box-smg").hide();
        $("#rnb-box-sawnoffshotgun").hide();
        $("#rnb-box-carbinerifle_mk2").hide();
        $("#rnb-box-gusenberg").hide();
        $("#rnb-box-knuckle").show();
        $.post('https://ng_blackcraft/car', JSON.stringify({}));
        return
    })

    $("#change-btn-appistol").click(function () {
        $("#rnb-box").hide();
        $("#rnb-box-knuckle").hide();
        $("#rnb-box-smg").hide();
        $("#rnb-box-sawnoffshotgun").hide();
        $("#rnb-box-carbinerifle_mk2").hide();
        $("#rnb-box-gusenberg").hide();
        $("#rnb-box-appistol").show();
        $.post('https://ng_blackcraft/car', JSON.stringify({}));
        return
    })

    $("#change-btn-smg").click(function () {
        $("#rnb-box").hide();
        $("#rnb-box-knuckle").hide();
        $("#rnb-box-appistol").hide();
        $("#rnb-box-sawnoffshotgun").hide();
        $("#rnb-box-carbinerifle_mk2").hide();
        $("#rnb-box-gusenberg").hide();
        $("#rnb-box-smg").show();
        $.post('https://ng_blackcraft/car', JSON.stringify({}));
        return
    })

    $("#change-btn-sawnoffshotgun").click(function () {
        $("#rnb-box").hide();
        $("#rnb-box-knuckle").hide();
        $("#rnb-box-appistol").hide();
        $("#rnb-box-smg").hide();
        $("#rnb-box-carbinerifle_mk2").hide();
        $("#rnb-box-gusenberg").hide();
        $("#rnb-box-sawnoffshotgun").show();
        $.post('https://ng_blackcraft/car', JSON.stringify({}));
        return
    })

    $("#change-btn-carbinerifle_mk2").click(function () {
        $("#rnb-box").hide();
        $("#rnb-box-knuckle").hide();
        $("#rnb-box-appistol").hide();
        $("#rnb-box-smg").hide();
        $("#rnb-box-sawnoffshotgun").hide();
        $("#rnb-box-gusenberg").hide();
        $("#rnb-box-carbinerifle_mk2").show();
        $.post('https://ng_blackcraft/car', JSON.stringify({}));
        return
    })

    $("#change-btn-gusenberg").click(function () {
        $("#rnb-box").hide();
        $("#rnb-box-knuckle").hide();
        $("#rnb-box-appistol").hide();
        $("#rnb-box-smg").hide();
        $("#rnb-box-sawnoffshotgun").hide();
        $("#rnb-box-carbinerifle_mk2").hide();
        $("#rnb-box-gusenberg").show();
        $.post('https://ng_blackcraft/car', JSON.stringify({}));
        return
    })

})

function SwitchBtn(id) {
    if (id == 'knuckle') {
        $("html").fadeOut("slow");
        $.post('https://ng_blackcraft/knuckle', JSON.stringify({}));
    } else if (id == 'appistol') {
        $("html").fadeOut("slow");
        $.post('https://ng_blackcraft/appistol', JSON.stringify({}));
    }else if (id == 'smg') {
        $("html").fadeOut("slow");
        $.post('https://ng_blackcraft/smg', JSON.stringify({}));
    }else if (id == 'sawnoffshotgun') {
        $("html").fadeOut("slow");
        $.post('https://ng_blackcraft/sawnoffshotgun', JSON.stringify({}));
    }else if (id == 'carbinerifle_mk2') {
        $("html").fadeOut("slow");
        $.post('https://ng_blackcraft/carbinerifle_mk2', JSON.stringify({}));
    }else if (id == 'gusenberg') {
        $("html").fadeOut("slow");
        $.post('https://ng_blackcraft/gusenberg', JSON.stringify({}));
    }else if (id == 'buyknuckle') {
        $("html").fadeOut("slow");
        $.post('https://ng_blackcraft/buyknuckle', JSON.stringify({}));
    }else if (id == 'buyappistol') {
        $("html").fadeOut("slow");
        $.post('https://ng_blackcraft/buyappistol', JSON.stringify({}));
    }else if (id == 'buysmg') {
        $("html").fadeOut("slow");
        $.post('https://ng_blackcraft/buysmg', JSON.stringify({}));
    }else if (id == 'buysawnoffshotgun') {
        $("html").fadeOut("slow");
        $.post('https://ng_blackcraft/buysawnoffshotgun', JSON.stringify({}));
    }else if (id == 'buycarbinerifle_mk2') {
        $("html").fadeOut("slow");
        $.post('https://ng_blackcraft/buycarbinerifle_mk2', JSON.stringify({}));
    }else if (id == 'buygusenberg') {
        $("html").fadeOut("slow");
        $.post('https://ng_blackcraft/buygusenberg', JSON.stringify({}));
    }
}