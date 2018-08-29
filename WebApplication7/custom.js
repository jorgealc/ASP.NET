$(document).ready(function () {
    $('.tabla').DataTable();
}
);
function _showUsers() {
    $("#boton").on("click", function () {
        dtEquipos();
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
{ "data": "provincia" }

]
});
}
