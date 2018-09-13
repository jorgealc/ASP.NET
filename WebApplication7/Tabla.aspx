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
    <link href="Scripts/umd/jquery-ui.css" rel="stylesheet" />
    <script src="Scripts/umd/jquery-ui.js"></script>
    <link href="Scripts/umd/jquery-ui.min.css" rel="stylesheet" />
    <script src="Scripts/umd/jquery-ui.min.js"></script>
    <link href="Scripts/umd/jquery-ui.structure.css" rel="stylesheet" />
    <link href="Scripts/umd/jquery-ui.structure.min.css" rel="stylesheet" />
    <link href="Scripts/umd/jquery-ui.theme.css" rel="stylesheet" />
    <link href="Scripts/umd/jquery-ui.theme.min.css" rel="stylesheet" />
    <link href="Styles/Style1.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
        <div id="popupdiv" title="Jquery modal" style="display:none">
            
            Alineaciones:
            <div id="alineacion" runat="server">
                <asp:Image ID="Imagen" runat="server" ImageUrl="http://localhost:49291/images/real_madrid.jpg" />

            </div>
            
            Resultado :<label id="resultado"></label>
            <br />
            Goleadores : <label id="jugadores"></label>
            <br />
            Amarillas : <label id="amarillas"></label>
            <br />
            Rojas : <label id="rojas"></label>
            <br />

        </div>
        <div class="container">
            <br />

            <br />
            <div class="row">
                <div class="col-md-12">
                    <table class="tabla table table-striped" id="table-equipos">
                        <thead>
                            <tr>
                                <th scope="col" data-field="Posicion">Posicion </th>
                                <th scope="col" data-field="Equipo">Equipo</th>
                                <th scope="col" data-field="Puntos">Puntos</th>
                              
                               
                            </tr>
                           
                        </thead>

                    </table>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <!--
                    <select class="custom-select" ID="jornadaselect" runat ="server" onchangedselectedindex="jornadaselect_SelectedIndexChanged" autopostback="True">
                        <option selected>Elige una jornada...</option>
                        <option value="1">Jornada 1</option>
                        <option value="2">Jornada 2</option>
                        <option value="3">Jornada 3</option>
                    </select>-->
                    <asp:DropDownList id="pepe" CssClass="custom-select" runat="server" AutoPostBack="False" OnSelectedIndexChanged="jornadaselect_SelectedIndexChanged1" >
                        <asp:ListItem Enabled="true" Text="Elige Jornada" Value="-1"></asp:ListItem>
                        <asp:ListItem  Text="Jornada 1" Value="1"></asp:ListItem>
                        <asp:ListItem  Text="Jornada 2" Value="2"></asp:ListItem>
                        <asp:ListItem  Text="Jornada 3" Value="3"></asp:ListItem>


                    </asp:DropDownList>
                    <br />
                   <br />
                    <button type="button" id="boton" class="btn btn-success">Listar</button>
                </div>
            </div>
        </div>
     

        
    </form>
    <script type="text/javascript" src="custom.js"></script>
    <script>
        $(function () {
            _showUsers();           
             
            $("#popupdiv").dialog({
                autoOpen: false
            });
                
            $('#table-equipos').on("click", "tr", function () {
                $("#popupdiv").dialog('open');
            });
        
        });
    </script>
</body>
</html>
