using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;

public partial class GestionCitas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Citas"] == null)
            Session["Citas"] = Datos.Citas();

        if (!IsPostBack)
            Cargar();
    }

    protected void ddlEstado_SelectedIndexChanged(object sender, EventArgs e)
    {
        Cargar();
    }

    protected void rptCitas_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int id = int.Parse(e.CommandArgument.ToString());
        foreach (Cita c in (List<Cita>)Session["Citas"])
        {
            if (c.Id == id)
                c.Estado = e.CommandName == "Confirmar" ? "Confirmada" : "Cancelada";
        }
        Cargar();
    }

    private void Cargar()
    {
        List<Cita> lista = new List<Cita>();
        foreach (Cita c in (List<Cita>)Session["Citas"])
        {
            if (ddlEstado.SelectedValue == "Todas" || c.Estado == ddlEstado.SelectedValue)
                lista.Add(c);
        }
        rptCitas.DataSource = lista;
        rptCitas.DataBind();
    }
}