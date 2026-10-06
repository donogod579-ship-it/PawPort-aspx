<%@ Page Title="Mis mascotas" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="MisMascotas.aspx.cs" Inherits="MisMascotas" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <section class="section">
        <div class="container">
            <h2 style="text-align:left">Mis Mascotas</h2>
            <p class="muted"><asp:Label ID="lblSaludo" runat="server" /></p>
            <div class="grid">
                <asp:Repeater ID="rptMascotas" runat="server">
                    <ItemTemplate>
                        <article class="card-paw">
                            <img class="card-img" src='<%# ResolveUrl(Eval("Imagen").ToString()) %>' alt='<%# Eval("Nombre") %>' />
                            <div class="card-body-paw">
                                <h3><%# Eval("Nombre") %></h3>
                                <p class="muted"><%# Eval("Especie") %> · <%# Eval("Raza") %> · <%# Eval("Edad") %> años</p>
                                <span class="badge-paw <%# Eval("Vacunas").ToString() == "Al día" ? "ok" : "wait" %>">Vacunas: <%# Eval("Vacunas") %></span>
                            </div>
                        </article>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </section>
    <div class="form-card">
        <h3>Registrar mascota</h3>
        <label>Nombre</label>
        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" />
        <label>Especie</label>
        <asp:DropDownList ID="ddlEspecie" runat="server" CssClass="form-control">
            <asp:ListItem>Perro</asp:ListItem>
            <asp:ListItem>Gato</asp:ListItem>
            <asp:ListItem>Ave</asp:ListItem>
            <asp:ListItem>Otro</asp:ListItem>
        </asp:DropDownList>
        <label>Raza</label>
        <asp:TextBox ID="txtRaza" runat="server" CssClass="form-control" />
        <label>Edad (años)</label>
        <asp:TextBox ID="txtEdad" runat="server" CssClass="form-control" TextMode="Number" />
        <label>Foto</label>
        <asp:FileUpload ID="fuFoto" runat="server" CssClass="form-control" />
        <br />
        <asp:Button ID="btnAgregar" runat="server" Text="Registrar mascota" CssClass="btn-paw" OnClick="btnAgregar_Click" />
        <br /><asp:Label ID="lblMensaje" runat="server" />
    </div>
</asp:Content>