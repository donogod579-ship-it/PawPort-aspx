using System;

public partial class Login : System.Web.UI.Page
{
    protected void btnIngresar_Click(object sender, EventArgs e)
    {
        if (txtCorreo.Text.Trim() == "" || txtClave.Text == "")
        {
            lblError.Text = "Ingresa tu correo y contraseña.";
            return;
        }
        Session["Usuario"] = txtCorreo.Text;
        if (ddlRol.SelectedValue == "Veterinario")
            Response.Redirect("~/DashboardClinica");
        else
            Response.Redirect("~/MisMascotas");
    }
}
