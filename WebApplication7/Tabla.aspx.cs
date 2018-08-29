using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class Tabla : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usu"] == null)
            {
                Response.Redirect("Form.aspx");
            }
        }
        [WebMethod]
        public static object getEquipos()
        {
            List<Equipo> lista = new List<Equipo>();
            lista.Add(new Equipo(1, 1, "Athletic", "Bizkaia"));
            lista.Add(new Equipo(2, 2, "Real Madrid", "Madrid"));
            lista.Add(new Equipo(3, 3, "Barcelona", "Barcelona"));
            object json = new  { data = lista };
            return json;
        }

    }
}