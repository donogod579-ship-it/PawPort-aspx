<%@ Page Title="Iniciar sesión" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <div class="login-grid">
        <asp:Image runat="server" ImageUrl="~/recursos/img/hero.jpg" CssClass="login-img" AlternateText="Mascota" />
        <div class="login-form">
            <div class="form-card" style="width:100%">
                <h2>Hola de nuevo</h2>
                <p class="muted">Ingresa a tu cuenta PawPort.</p>
                <label>Tipo de usuario</label>
                <asp:DropDownList ID="ddlRol" runat="server" CssClass="form-control">
                    <asp:ListItem>Propietario</asp:ListItem>
                    <asp:ListItem>Veterinario</asp:ListItem>
                </asp:DropDownList>
                <label>Correo electronico</label>
                <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" TextMode="Email" />
                <label>Contrasena</label>
                <asp:TextBox ID="txtClave" runat="server" CssClass="form-control" TextMode="Password" />
                <br />
                <asp:Button ID="btnIngresar" runat="server" Text="Iniciar sesion" CssClass="btn-paw" OnClick="btnIngresar_Click" />
                <br /><asp:Label ID="lblError" runat="server" CssClass="msg-error" />
                <p class="muted" style="margin-top:1rem">¿No tienes cuenta? <a runat="server" href="~/RegistroUsuario">Regístrate</a></p>
            </div>
        </div>
    </div>
</asp:Content>