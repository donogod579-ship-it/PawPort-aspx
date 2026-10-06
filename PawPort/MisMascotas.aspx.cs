using System;
using System.Collections.Generic;
using System.IO;

public partial class MisMascotas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Mascotas"] == null)
            Session["Mascotas"] = Datos.Mascotas();

        if (!IsPostBack)
        {
            string usuario = Session["Usuario"] as string;
            lblSaludo.Text = "Hola, " + (usuario ?? "propietario") + ". Aquí está la información de tus mascotas.";
            Cargar();
        }
    }

    protected void btnAgregar_Click(object sender, EventArgs e)
    {
        int edad;
        lblMensaje.CssClass = "msg-error";
        if (txtNombre.Text.Trim() == "" || !int.TryParse(txtEdad.Text, out edad) || edad < 0)
        {
            lblMensaje.Text = "Escribe el nombre y una edad válida.";
            return;
        }

        string imagen = "~/recursos/img/mascota.jpg";
        if (fuFoto.HasFile)
        {
            string extension = Path.GetExtension(fuFoto.FileName).ToLower();
            if (extension != ".jpg" && extension != ".png")
            {
                lblMensaje.Text = "La foto debe ser .jpg o .png.";
                return;
            }
            string archivo = Path.GetFileName(fuFoto.FileName);
            fuFoto.SaveAs(Server.MapPath("~/recursos/img/") + archivo);
            imagen = "~/recursos/img/" + archivo;
        }

        List<Mascota> lista = (List<Mascota>)Session["Mascotas"];
        lista.Add(new Mascota(txtNombre.Text, ddlEspecie.SelectedValue, txtRaza.Text, edad, imagen, "Pendiente"));

        lblMensaje.CssClass = "msg-ok";
        lblMensaje.Text = "Mascota registrada correctamente.";
        txtNombre.Text = "";
        txtRaza.Text = "";
        txtEdad.Text = "";
        Cargar();
    }

    private void Cargar()
    {
        rptMascotas.DataSource = Session["Mascotas"];
        rptMascotas.DataBind();
    }
}
