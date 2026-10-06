<%@ Page Title="Explorar clínicas" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ExplorarClinicas.aspx.cs" Inherits="ExplorarClinicas" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <section class="banner">
        <div class="container">
            <h1>Encuentra la mejor atención veterinaria en el mundo</h1>
            <div class="buscador">
                <asp:TextBox ID="txtBuscar" runat="server" CssClass="form-control" placeholder="Busca por nombre o ciudad" />
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn-paw" OnClick="btnBuscar_Click" />
            </div>
        </div>
    </section>
    <section class="section">
        <div class="container">
            <p class="muted"><asp:Label ID="lblResultados" runat="server" /></p>
            <div class="grid">
                <asp:Repeater ID="rptClinicas" runat="server">
                    <ItemTemplate>
                        <article class="card-paw">
                            <img class="card-img" src='<%# ResolveUrl(Eval("Imagen").ToString()) %>' alt='<%# Eval("Nombre") %>' />
                            <div class="card-body-paw">
                                <h3><%# Eval("Nombre") %></h3>
                                <p class="muted"> <%# Eval("Ciudad") %></p>
                                <span class="badge-paw info"><%# Eval("Especialidad") %></span>
                                <p> <%# Eval("Calificacion") %></p>
                                <a class="btn-line" href='<%# ResolveUrl("~/AgendarCita") %>?clinica=<%# Server.UrlEncode(Eval("Nombre").ToString()) %>'>Agendar cita</a>
                            </div>
                        </article>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </section>
</asp:Content>