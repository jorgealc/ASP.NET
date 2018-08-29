using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class ControlesDinamicos : System.Web.UI.Page
    {
        private Button b;
        protected void Page_Load(object sender, EventArgs e)
        {
            b = new Button();
            b.Text = "Haga click";
            b.ID = "boton";
            form1.Controls.Add(b);
            b.Click += new EventHandler(b_Click);

                

        }
        void b_Click(object sender, EventArgs e)
        {
            Label1.Text = "Ha hecho click";
           // Label1.Text="Nombre: "+ Request.QueryString["nombre"];
        }

    }
}