<%@ Page Title="Portafolio" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Portafolio.aspx.cs" Inherits="Portafolio" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <section class="banner">
        <div class="container">
            <h1>Nuestro portafolio</h1>
            <p>Así se verá PawPort: prototipo del diseño final creado en Figma.</p>
        </div>
    </section>
    <section class="section">
        <div class="container" style="text-align:center">
            <h2>Prototipo en Figma</h2>
            <p class="sub">Explora todas las pantallas: landing, login, registros, dashboards, citas y mascotas.</p>
            <asp:HyperLink runat="server" NavigateUrl="https://www.figma.com/design/LBoXOpojAA42rvcm3Uqtx7/A2D2?node-id=225-2&t=KqEJnmD8DokbyupK-0" Target="_blank" CssClass="btn-paw btn-big" Text="Ver prototipo en Figma" />
        </div>
        <div class="container galeria" style="margin-top:2.5rem">
            <div class="grid">
                <div><asp:Image runat="server" ImageUrl="~/recursos/img/figma1.png" AlternateText="Landing" /><p class="muted">Landing page</p></div>
                <div><asp:Image runat="server" ImageUrl="~/recursos/img/figma2.png" AlternateText="Dashboard" /><p class="muted">Dashboards y registros</p></div>
                <div><asp:Image runat="server" ImageUrl="~/recursos/img/figma3.png" AlternateText="Citas" /><p class="muted">Clínicas, citas y mascotas</p></div>
            </div>
        </div>
    </section>
</asp:Content>