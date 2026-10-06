<%@ Page Title="Gestión de citas" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="GestionCitas.aspx.cs" Inherits="GestionCitas" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <section class="section">
        <div class="container">
            <h2 style="text-align:left">Gestión de Citas Médicas</h2>
            <p class="muted">Confirma o cancela las citas solicitadas por los propietarios.</p>
            <label>Filtrar por estado</label>
            <asp:DropDownList ID="ddlEstado" runat="server" CssClass="form-control" Width="220px" AutoPostBack="true" OnSelectedIndexChanged="ddlEstado_SelectedIndexChanged">
                <asp:ListItem>Todas</asp:ListItem>
                <asp:ListItem>Pendiente</asp:ListItem>
                <asp:ListItem>Confirmada</asp:ListItem>
                <asp:ListItem>En consulta</asp:ListItem>
                <asp:ListItem>Cancelada</asp:ListItem>
            </asp:DropDownList>
            <br />
            <div class="scroll">
                <table class="tabla">
                    <tr><th>Hora</th><th>Paciente</th><th>Propietario</th><th>Motivo</th><th>Estado</th><th>Acciones</th></tr>
                    <asp:Repeater ID="rptCitas" runat="server" OnItemCommand="rptCitas_ItemCommand">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("Hora") %></td>
                                <td><%# Eval("Mascota") %></td>
                                <td><%# Eval("Propietario") %></td>
                                <td><%# Eval("Motivo") %></td>
                                <td><span class='badge-paw <%# Datos.ClaseEstado(Eval("Estado").ToString()) %>'><%# Eval("Estado") %></span></td>
                                <td>
                                    <asp:Button runat="server" Text="Confirmar" CommandName="Confirmar" CommandArgument='<%# Eval("Id") %>' CssClass="btn-mini ok" />
                                    <asp:Button runat="server" Text="Cancelar" CommandName="Cancelar" CommandArgument='<%# Eval("Id") %>' CssClass="btn-mini bad" />
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </div>
        </div>
    </section>
</asp:Content>