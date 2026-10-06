using System;
using System.Collections.Generic;

public partial class ExplorarClinicas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            Cargar("");
    }

    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        Cargar(txtBuscar.Text.Trim());
    }

    private void Cargar(string texto)
    {
        List<Clinica> lista = new List<Clinica>();
        foreach (Clinica c in Datos.Clinicas())
        {
            if (c.Nombre.ToLower().Contains(texto.ToLower()) || c.Ciudad.ToLower().Contains(texto.ToLower()))
                lista.Add(c);
        }
        rptClinicas.DataSource = lista;
        rptClinicas.DataBind();
        lblResultados.Text = lista.Count + " clínicas encontradas";
    }
}