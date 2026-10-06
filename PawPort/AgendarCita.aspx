<%@ Page Title="Agendar cita" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AgendarCita.aspx.cs" Inherits="AgendarCita" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-card">
        <h2>Agendar una cita</h2>
        <div class="paso"><span>1</span> Datos de la mascota</div>
        <label>Mascota</label>
        <asp:DropDownList ID="ddlMascota" runat="server" CssClass="form-control" />
        <div class="paso"><span>2</span> Clinica y especialidad</div>
        <label>Clinica</label>
        <asp:DropDownList ID="ddlClinica" runat="server" CssClass="form-control" />
        <label>Especialidad</label>
        <asp:DropDownList ID="ddlEspecialidad" runat="server" CssClass="form-control">
            <asp:ListItem>Medicina general</asp:ListItem>
            <asp:ListItem>Cirugia</asp:ListItem>
            <asp:ListItem>Dermatologia</asp:ListItem>
            <asp:ListItem>Cardiologia</asp:ListItem>
        </asp:DropDownList>
        <div class="paso"><span>3</span> Fecha y motivo</div>
        <label>Fecha</label>
        <asp:TextBox ID="txtFecha" runat="server" CssClass="form-control" TextMode="Date" />
        <label>Hora</label>
        <asp:DropDownList ID="ddlHora" runat="server" CssClass="form-control">
            <asp:ListItem>09:00</asp:ListItem>
            <asp:ListItem>10:30</asp:ListItem>
            <asp:ListItem>14:00</asp:ListItem>
            <asp:ListItem>16:00</asp:ListItem>
        </asp:DropDownList>
        <label>Motivo de la consulta</label>
        <asp:TextBox ID="txtMotivo" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
        <br />
        <asp:Button ID="btnConfirmar" runat="server" Text="Confirmar cita" CssClass="btn-paw" OnClick="btnConfirmar_Click" />
        <br /><asp:Label ID="lblResumen" runat="server" />
    </div>
</asp:Content>