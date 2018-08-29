<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InlineCode.aspx.cs" Inherits="WebApplication7.InlineCode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!--<%  %>Estos bloques de instrucciones se ejecutan durante la visualizacion de la pagina. Pueden influir en la fabricacion de secuencias HTML, tal y como muestra el siguiente ejemplo de codigo anidado -->
       <% string[] dias = { "lunes", "martes", "miercoles", "jueves", "viernes" };
          for (int i=0;i<dias.Length;i++)
          {
              %>
                    <li> <%=dias[i]%></li>
                    
                 
          <%
          
          
          } %>
        <%=DateTime.Now.ToLongTimeString() %>
        </div>
        

    </form>
</body>
</html>
