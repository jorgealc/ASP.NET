using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class Form : System.Web.UI.Page
    {
        public enum MessageType
        {
            Success,
            Info,
            Warning,
            Error,

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            btnsubmit.Disabled = true;

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            bool resultado;
            string nombre;
            string email;
            nombre = usuario_id.Value.ToString();
            email = usuario_email.Value.ToString();
            ServicioWeb.WebServicePrueba servicio = new ServicioWeb.WebServicePrueba();
            resultado = servicio.Verificar(nombre, email);
            if (resultado == true)
            {
                ShowMessage("Bien hecho", MessageType.Success);
                Session["usu"] = nombre;
            }
            else
            {
                ShowMessage("Credenciales incorrectas", MessageType.Error);
            }



        }
        protected void ShowMessage(string Message, MessageType type)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
        }
        protected void Session_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.RemoveAll();
            Response.Redirect("Form.aspx");
        }
    }
}