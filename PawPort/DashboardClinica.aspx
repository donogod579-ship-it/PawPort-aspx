<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="DashboardClinica.aspx.cs" Inherits="DashboardClinica" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <section class="section">
        <div class="container">
            <h2 style="text-align:left">Panel de Control Clínico</h2>
            <p class="muted">Resumen de la operación de tu clínica.</p>
            <div class="grid">
                <div class="card-paw pad stat-card"><b>8</b>Citas de hoy</div>
                <div class="card-paw pad stat-card"><b>156</b>Pacientes activos</div>
                <div class="card-paw pad stat-card"><b>4.8</b>Calificación</div>
                <div class="card-paw pad stat-card"><b>12</b>Veterinarios</div>
            </div>
            <h3 style="margin-top:2rem">Citas del día</h3>
            <div class="scroll">
                <table class="tabla">
                    <tr><th>Hora</th><th>Paciente</th><th>Propietario</th><th>Motivo</th><th>Estado</th></tr>
                    <asp:Repeater ID="rptCitas" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("Hora") %></td>
                                <td><%# Eval("Mascota") %></td>
                                <td><%# Eval("Propietario") %></td>
                                <td><%# Eval("Motivo") %></td>
                                <td><span class='badge-paw <%# Datos.ClaseEstado(Eval("Estado").ToString()) %>'><%# Eval("Estado") %></span></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </div>
        </div>
    </section>
</asp:Content>