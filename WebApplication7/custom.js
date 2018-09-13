$(document).ready(function () {
    $('.tabla').DataTable();
   
});
function _showUsers() {
    $("#pepe").change(function () {
        if ($("#pepe :selected").text() == "Jornada 1") {
            console.log("Jornada 1");
            dtEquipos();
        }
        if ($("#pepe :selected").text() == "Jornada 2") {
            console.log("Jornada 2");
            dtEquipos2();
        }
        
    });
}

$('#table-equipos').on("click", "tr", function (e) {

    var equipo = ($(this).find('td').eq(1).text());
    if (equipo == "") {
        $('##popupdiv.in').modal('hide');
    }
    if (equipo == "Real Madrid" && ($("#pepe :selected").text() == "Jornada 1")) {
        $("#alineacion > img").attr('src','http://localhost:49291/images/real_madrid.jpg' );
        $("#resultado").text("Real Madrid: 4 Leganés : 1");
        $("#jugadores").text("1 Bale 2 Benzema  1 Ramos");
        $("#amarillas").text("Luka Modric");
        $("#rojas").text("Ninguno");
        $("#popupdiv").dialog({
            title: equipo,
            width: 850,
            height: 550,
            modal: true,
            buttons: {
                Close: function () {
                    $(this).dialog('close');
                }
            }
        });
    }
    else if (equipo == "Barcelona" && ($("#pepe :selected").text() == "Jornada 1")) {
        $("#resultado").text("");
        $("#jugadores").text("");
        $("#alineacion > img").attr('src', '');
        $("#amarillas").text("");
        $("#popupdiv").dialog({
            title: equipo,
        });

    }

    else {
        $("#resultado").text("");
        $("#jugadores").text("");
        $("#alineacion > img").attr('src', '');
        $("#amarillas").text("");
        $("#popupdiv").dialog({
            title: equipo,
        });

    }

   
});









function test(){
    $.ajax({
        method: "POST",
        url: "Tabla.aspx/getEquipos",
        contentType:" application/json; charset=utf-8",
        dataType: "json"
    }).done(function(info){
    console.log(info);
});
}

function dtEquipos(){
    var table=$("#table-equipos").DataTable({
        destroy: true,
        responsive:true,
        ajax: {
            method: "POST",
            url: "Tabla.aspx/getEquipos",
            contentType:" application/json; charset=utf-8",
            dataType: "json",
            data: function(d) {
                return JSON.stringify(d);
            },
            dataSrc:"d.data"
        },
        columns: [
            
    {"data": "posicion"},
{ "data": "equipo" },
{ "data": "puntos" }


]
});
}
function dtEquipos2() {
    var table = $("#table-equipos").DataTable({
        destroy: true,
        responsive: true,
        ajax: {
            method: "POST",
            url: "Tabla.aspx/getEquipos2",
            contentType: " application/json; charset=utf-8",
            dataType: "json",
            data: function (d) {
                return JSON.stringify(d);
            },
            dataSrc: "d.data"
        },
        columns: [

    { "data": "posicion" },
{ "data": "equipo" },
{ "data": "puntos" }

        ]
    });
}