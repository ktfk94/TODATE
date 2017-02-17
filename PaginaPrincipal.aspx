<%@ Page Title="" Language="C#" MasterPageFile="~/PagMestre.master" AutoEventWireup="true" CodeFile="PaginaPrincipal.aspx.cs" Inherits="PaginaPrincipal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="panel panel-primary" id="iniciSessio" runat="server">
        <div class="panel-heading">
            <asp:Label ID="LabelIniciTitol" CssClass="control-label" runat="server" Text="Iniciar sessió"></asp:Label>
        </div>
        <div class="panel-body">
            <div class="form-group">
                <asp:Label ID="LabelDadesNom" CssClass="col-sm-2 control-label" runat="server" Text="Usuari"></asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBoxDadesNom" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorDadesNom" CssClass="alert-danger label-danger label" runat="server" 
                        ErrorMessage="El nom d'usuari és necessari!" ControlToValidate="TextBoxDadesNom" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>                
            </div>
            <div class="form-group">
                <asp:Label ID="LabelDadesContra" CssClass="col-sm-2 control-label" runat="server" Text="Contrasenya"></asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBoxDadesContra" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorDadesContra" CssClass="alert-danger label-danger label" runat="server" 
                        ErrorMessage="La contrasenya és necessaria!" ControlToValidate="TextBoxDadesContra" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group" id="buttonIniciSessio">
                <asp:LinkButton ID="LinkButtonAcceptar" CssClass="btn btn-primary" runat="server">
                    <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Acceptar
                </asp:LinkButton>
                <asp:Label ID="LabelRecuperar" CssClass="label label-warning" runat="server" Text="Has oblidat la contrasenya?"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>

