<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication7.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
         <style>
        p {
            color: red;
            text-align:left;
        }
        div {
            color: blue;
            text-align: right;
        }
    </style>    

    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Hola mundo!!</div>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        Gracias por visitar esta pagina Web</p>
        <p>
            &nbsp;</p>
        <p>
            Aqui hay algunas cosas que te quiero mostrar</p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Puedo agregar a Label object"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Puedo agregar un objeto boton" />
        </p>
    </form>
    </body>
</html>
