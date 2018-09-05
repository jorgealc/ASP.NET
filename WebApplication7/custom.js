$(document).ready(function () {
    $('.tabla').DataTable();
}
);
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