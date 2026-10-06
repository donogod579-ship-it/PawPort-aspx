using System;

public partial class AgendarCita : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            foreach (Mascota m in Datos.Mascotas())
                ddlMascota.Items.Add(m.Nombre);
            foreach (Clinica c in Datos.Clinicas())
                ddlClinica.Items.Add(c.Nombre);

            string elegida = Request.QueryString["clinica"];
            if (elegida != null && ddlClinica.Items.FindByValue(elegida) != null)
                ddlClinica.SelectedValue = elegida;
        }
    }

    protected void btnConfirmar_Click(object sender, EventArgs e)
    {
        DateTime fecha;
        lblResumen.CssClass = "msg-error";
        if (!DateTime.TryParse(txtFecha.Text, out fecha) || fecha.Date < DateTime.Today)
        {
            lblResumen.Text = "Elige una fecha válida (hoy o posterior).";
            return;
        }
        if (txtMotivo.Text.Trim() == "")
        {
            lblResumen.Text = "Escribe el motivo de la consulta.";
            return;
        }
        lblResumen.CssClass = "msg-ok";
        lblResumen.Text = "Cita solicitada para " + ddlMascota.SelectedValue + " en " + ddlClinica.SelectedValue
            + " (" + ddlEspecialidad.SelectedValue + ") el " + fecha.ToString("dd/MM/yyyy") + " a las " + ddlHora.SelectedValue + ".";
    }
}