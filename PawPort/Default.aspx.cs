using System;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            rptClinicas.DataSource = Datos.Clinicas();
            rptClinicas.DataBind();
        }
    }

    protected void btnEnviar_Click(object sender, EventArgs e)
    {
        if (txtNombre.Text.Trim() == "" || txtCorreo.Text.Trim() == "" || txtMensaje.Text.Trim() == "")
        {
            lblMensaje.CssClass = "msg-error";
            lblMensaje.Text = "Completa todos los campos.";
            return;
        }
        lblMensaje.CssClass = "msg-ok";
        lblMensaje.Text = "¡Gracias " + txtNombre.Text + "! Te responderemos pronto.";
        txtNombre.Text = "";
        txtCorreo.Text = "";
        txtMensaje.Text = "";
    }
}