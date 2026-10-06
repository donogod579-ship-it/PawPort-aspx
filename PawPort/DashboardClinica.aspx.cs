using System;

public partial class DashboardClinica : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            rptCitas.DataSource = Datos.Citas();
            rptCitas.DataBind();
        }
    }
}