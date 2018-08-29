<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="WebApplication7.Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title></title>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/font-awesome.css" rel="stylesheet" />
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
    <style type="text/css">
        .messagealert {
            width: 100%;
            position: fixed;
            top: 0px;
            z-index: 10000;
            padding: 0;
            font-size: 15px;
        }
    </style>
    <script type="text/javascript">
        function ShowMessage(message, messagetype) {
            var cssclass;
            switch (messagetype) {
                case 'Success':
                    cssclass = 'alert-success'
                    break;
                case 'Error':
                    console.log("%s", "Error");
                    cssclass = 'alert-danger'
                    break;
                case 'Warning':
                    cssclass = 'alert-warning'
                    break;
                default:
                    cssclass = 'alert-info'
            }
            $('#alert_container').append('<div id="alert_div" style="margin: 0 0.5%; -webkit-box-shadow: 3px 4px 6px #999;" class="alert ' + cssclass + '"><strong>' + messagetype + '!</strong> <span>' + message + '</span></div>');
            setTimeout(function () {
                $('#alert_container').hide('fade');
            }, 2000)
        }

    </script>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light ">
        <a class="navbar-brand" href="#">
            <img style="width: 35px; height: 50px" src="Imagenes/logo.PNG" /></a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Inicio <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Form.aspx">Formulario</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Tabla.aspx">Liga 2018/2019 AJAX</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">Disabled</a>
                </li>
            </ul>
            <%if (Session["usu"] != null)
              {
            
            %>
        </div>
        <ul class="navbar-nav justify-content-end">
            <li class="nav-item">
                <span class="navbar-text">Bienvenido <span class="navbar-text"><%=Session["usu"] %>
                </span>
                    <button class="btn btn-outline-success" id="btn" runat="server" onserverclick="Session_Click" type="button">Cerrar Sesion</button>
              
            </li>
            <%} %>
        </ul>
    </nav>

    <div class="messagealert" id="alert_container"></div>
    <form id="form1" runat="server" defaultfocus="usuario_id">
        <br />
        <br />
        <div class="row">

            <div class="col-md-3"></div>
            <div class="col-md-6">



                <!--
                    <div class="input-group">
                        <button id="Button2" runat="server">
                            <i class="fa fa-user-o" aria-hidden="true"></i>
                        </button> 
                     
                    </div> -->
                <div class="input-group">
                    <button id="Button3" runat="server">
                        <i class="fa fa-user-o" aria-hidden="true"></i>
                    </button>

                    <input type="text" runat="server" class="form-control" id="usuario_id" placeholder="Usuario" aria-describedby="basic-addon2">

                    <asp:RequiredFieldValidator runat="server" ID="rfv" ControlToValidate="usuario_id" Style="color: red" Display="Dynamic"> *Campo requirido</asp:RequiredFieldValidator>
                    <br />
                </div>





                <div class="input-group">
                    <button id="Button1" runat="server">
                        <i class="fa fa-envelope-open-o" aria-hidden="true"></i>
                    </button>

                    <input type="text" class="form-control" runat="server" id="usuario_email" placeholder="E-mail" aria-describedby="basic-addon2">
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="usuario_email" Style="color: red" Display="Dynamic"> *Campo requirido</asp:RequiredFieldValidator>


                </div>



                <input type="button" id="btnsubmit" runat="server" class="btn-block btn-primary" onserverclick="Submit_Click" value="Entrar" />

            </div>
        </div>

    </form>
    <script type="text/javascript" src="validar.js"></script>
</body>
</html>
