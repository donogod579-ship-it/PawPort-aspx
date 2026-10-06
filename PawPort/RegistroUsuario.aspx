<%@ Page Title="Crear cuenta" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="RegistroUsuario.aspx.cs" Inherits="RegistroUsuario" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-card">
        <h2>Crea tu cuenta de dueno</h2>
        <p class="muted">Un pasaporte unificado de salud para tu mascota 🐾</p>
        <label>Nombre completo</label>
        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" />
        <label>Correo electronico</label>
        <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" TextMode="Email" />
        <label>Telefono</label>
        <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control" />
        <label>Contrasena</label>
        <asp:TextBox ID="txtClave" runat="server" CssClass="form-control" TextMode="Password" />
        <label>Confirmar contrasena</label>
        <asp:TextBox ID="txtClave2" runat="server" CssClass="form-control" TextMode="Password" />
        <br />
        <asp:CheckBox ID="chkTerminos" runat="server" Text=" Acepto los términos y condiciones" />
        <br /><br />
        <asp:Button ID="btnCrear" runat="server" Text="Crear cuenta" CssClass="btn-paw" OnClick="btnCrear_Click" />
        <br /><asp:Label ID="lblMensaje" runat="server" />
        <p class="muted" style="margin-top:1rem">¿Ya tienes cuenta? <a runat="server" href="~/Login">Inicia sesion</a></p>
    </div>
</asp:Content>