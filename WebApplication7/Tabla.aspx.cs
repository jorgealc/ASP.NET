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
            lista.Add(new Equipo(1, 5, "Athletic", 3));
            lista.Add(new Equipo(2, 1, "Real Madrid", 3));
            lista.Add(new Equipo(3, 2, "Barcelona", 3));
            lista.Add(new Equipo(3, 3, "Sevilla", 3));
            lista.Add(new Equipo(3, 8, "Espanyol", 1));
            lista.Add(new Equipo(3, 4, "Huesca", 3));
            lista.Add(new Equipo(3, 6, "Real Sociedad", 3));
            lista.Add(new Equipo(3, 9, "Celta de Vigo", 1));
            lista.Add(new Equipo(3, 10, "Athletico", 1));
            lista.Add(new Equipo(3, 7, "Levante", 3));
            lista.Add(new Equipo(3, 15, "Getafe", 0));
            lista.Add(new Equipo(3, 16, "Leganés", 0));
            lista.Add(new Equipo(3, 14, "Villareal", 0));
            lista.Add(new Equipo(3, 13, "Valladolid", 1));
            lista.Add(new Equipo(3, 11, "Valencia", 1));
            lista.Add(new Equipo(3, 12, "Girona", 1));
            lista.Add(new Equipo(3, 17, "Alaves", 0));
            lista.Add(new Equipo(3, 18, "Betis", 0));
            lista.Add(new Equipo(3, 19, "Eibar", 0));
            lista.Add(new Equipo(3, 20, "Rayo Vallecano", 0));
            object json = new { data = lista };
            return json;
        }
        [WebMethod]
        public static object getEquipos2()
        {
            List<Equipo> lista = new List<Equipo>();
            lista.Add(new Equipo(1, 5, "Athletic", 4));
            lista.Add(new Equipo(2, 1, "Real Madrid", 6));
            lista.Add(new Equipo(3, 2, "Barcelona", 6));
            lista.Add(new Equipo(3, 3, "Sevilla", 6));
            lista.Add(new Equipo(3, 4, "Espanyol", 4));
            lista.Add(new Equipo(3, 6, "Huesca", 4));
            lista.Add(new Equipo(3, 7, "Real Sociedad", 4));
            lista.Add(new Equipo(3, 8, "Celta de Vigo", 4));
            lista.Add(new Equipo(3, 9, "Athletico", 4));
            lista.Add(new Equipo(3, 10, "Levante", 3));
            lista.Add(new Equipo(3, 11, "Getafe", 3));
            lista.Add(new Equipo(3, 12, "Leganés", 1));
            lista.Add(new Equipo(3, 13, "Villareal", 1));
            lista.Add(new Equipo(3, 14, "Valladolid", 1));
            lista.Add(new Equipo(3, 15, "Valencia", 1));
            lista.Add(new Equipo(3, 16, "Girona", 1));
            lista.Add(new Equipo(3, 17, "Alaves", 1));
            lista.Add(new Equipo(3, 18, "Betis", 0));
            lista.Add(new Equipo(3, 19, "Eibar", 0));
            lista.Add(new Equipo(3, 20, "Rayo Vallecano", 0));
            object json = new { data = lista };
            return json;
        }
      
        protected void jornadaselect_SelectedIndexChanged1(object sender, EventArgs e)
        {

            int i;
            for (i = 0; i < 10; i++)
            {
                Console.WriteLine(i);
            }


        }
    }
}