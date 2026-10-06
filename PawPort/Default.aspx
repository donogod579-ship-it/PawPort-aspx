<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <section class="hero">
        <div class="container hero-grid">
            <div>
                <h1>Cuidamos a quienes mas amas</h1>
                <p class="muted">PawPort, de A2D2, es una red internacional de clínicas veterinarias. Registra a tu mascota, consulta su historial medico y agenda citas desde un solo lugar.</p>
                <a runat="server" href="~/RegistroUsuario" class="btn-paw">Registrarme</a>
                <a runat="server" href="~/ExplorarClinicas" class="btn-line">Explorar clínicas</a>
            </div>
            <asp:Image runat="server" ImageUrl="~/recursos/img/image.png" CssClass="hero-img" AlternateText="Veterinaria con mascota" />
        </div>
    </section>

    <section class="section">
        <div class="container">
            <h2>Todo lo que necesitas en un solo lugar</h2>
            <p class="sub">Servicios pensados para duenios, veterinarios y administradores.</p>
            <div class="grid">
                <div class="card-paw pad"><div class="icono"></div><h3>Registro de mascotas</h3><p class="muted">Crea el perfil de cada mascota con su informacion basica.</p></div>
                <div class="card-paw pad"><div class="icono"></div><h3>Citas en línea</h3><p class="muted">Solicita, reprograma o cancela citas sin llamadas.</p></div>
                <div class="card-paw pad"><div class="icono"></div><h3>Expediente medico</h3><p class="muted">Diagnósticos, tratamientos y vacunas siempre disponibles.</p></div>
                <div class="card-paw pad"><div class="icono"></div><h3>Multiples clinicas</h3><p class="muted">Tu historial te acompania en cualquier sucursal de la red.</p></div>
                <div class="card-paw pad"><div class="icono"></div><h3>Recordatorios</h3><p class="muted">Avisos de citas y vacunas pendientes.</p></div>
                <div class="card-paw pad"><div class="icono"></div><h3>Facturación</h3><p class="muted">Cobros claros de consultas, tratamientos y medicamentos.</p></div>
            </div>
        </div>
    </section>

    <section class="section" style="background:#fff">
        <div class="container">
            <h2>Nuestra red de clinicas</h2>
            <p class="sub">Atencion profesional en distintas ciudades.</p>
            <div class="grid">
                <asp:Repeater ID="rptClinicas" runat="server">
                    <ItemTemplate>
                        <article class="card-paw">
                            <img class="card-img" src='<%# ResolveUrl(Eval("Imagen").ToString()) %>' alt='<%# Eval("Nombre") %>' />
                            <div class="card-body-paw">
                                <h3><%# Eval("Nombre") %></h3>
                                <p class="muted"> <%# Eval("Ciudad") %></p>
                                <a class="btn-line" href='<%# ResolveUrl("~/AgendarCita") %>?clinica=<%# Server.UrlEncode(Eval("Nombre").ToString()) %>'>Ver clinica</a>
                            </div>
                        </article>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </section>

    <section class="stats">
        <div class="container grid">
            <div class="stat"><b>+500</b>Clinicas asociadas</div>
            <div class="stat"><b>+10,000</b>Mascotas registradas</div>
            <div class="stat"><b>+50</b>Ciudades</div>
            <div class="stat"><b>+200</b>Veterinarios</div>
        </div>
    </section>

    <section class="section">
        <div class="container">
            <h2>Contactanos</h2>
            <p class="sub">contacto@pawport.com · +503 2222 0000 · San Salvador, El Salvador</p>
            <div class="form-card">
                <label>Nombre</label>
                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" />
                <label>Correo</label>
                <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" TextMode="Email" />
                <label>Mensaje</label>
                <asp:TextBox ID="txtMensaje" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" />
                <br />
                <asp:Button ID="btnEnviar" runat="server" Text="Enviar mensaje" CssClass="btn-paw" OnClick="btnEnviar_Click" />
                <br /><asp:Label ID="lblMensaje" runat="server" />
            </div>
        </div>
    </section>
</asp:Content>