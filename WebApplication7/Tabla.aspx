<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tabla.aspx.cs" Inherits="WebApplication7.Tabla" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/font-awesome.css" rel="stylesheet" />
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
    <script src="Scripts/datatables.js"></script>
    <link href="Scripts/umd/datatables.css" rel="stylesheet" />
    <link href="Scripts/umd/datatables.min.css" rel="stylesheet" />
   
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <br />
           
            <br />
            <div class="row">
                <div class="col-md-12">
                    <table class="tabla table table-striped" id="table-equipos">
                        <thead>
                            <tr>
                                <th scope="col">Posicion </th>
                                <th scope="col">Equipo</th>
                                <th scope="col">Provincia</th>

                            </tr>
                        </thead>

                    </table>
                </div>
            </div>
             <div class="row">
                <div class="col-md-3">
                    <button type="button" id="boton" class="btn btn-success">Listar</button>
                </div>
            </div>
        </div>

    </form>
    <script type="text/javascript" src="custom.js"></script>
    <script>
        $(function () {
            _showUsers();
            
        });
    </script>
</body>
</html>
