using System;

public partial class RegistroUsuario : System.Web.UI.Page
{
    protected void btnCrear_Click(object sender, EventArgs e)
    {
        lblMensaje.CssClass = "msg-error";
        if (txtNombre.Text.Trim() == "" || txtCorreo.Text.Trim() == "" || txtClave.Text == "")
        {
            lblMensaje.Text = "Completa nombre, correo y contraseña.";
            return;
        }
        if (txtClave.Text != txtClave2.Text)
        {
            lblMensaje.Text = "Las contraseñas no coinciden.";
            return;
        }
        if (!chkTerminos.Checked)
        {
            lblMensaje.Text = "Debes aceptar los términos.";
            return;
        }
        lblMensaje.CssClass = "msg-ok";
        lblMensaje.Text = "¡Cuenta creada! Bienvenido, " + txtNombre.Text + ".";
    }
}