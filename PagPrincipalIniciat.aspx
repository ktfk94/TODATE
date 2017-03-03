<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageIniciat.master" AutoEventWireup="true" CodeFile="PagPrincipalIniciat.aspx.cs" Inherits="PagPrincipalIniciat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="panel panel-primary" id="xats" runat="server">
        <div class="panel-heading">
            <h3>Xats</h3>
        </div>
        <div id="cercador">
            <asp:Label ID="LabelCercador" CssClass="col-sm-1 control-label" runat="server" Text="Label">Cercador</asp:Label>
            <div class="col-sm-11">
                <asp:TextBox ID="TextBoxCercador" CssClass="form-control" PlaceHolder="A qui busques?" runat="server" 
                    OnTextChanged="TextBoxCercador_TextChanged"></asp:TextBox>
            </div>
        </div>
        <div class="panel-body blocXats">
            <div class="row">
                <div id="espaiXats" class="container-fluid table-bordered col-md-8" runat="server">
                    <div class="row table-bordered">
                        <div class="col-md-2">
                            <img class="img-rounded img-responsive imatgeXats" alt="Bootstrap Image Preview" src="http://lorempixel.com/140/140/" />
                        </div>
                        <div class="col-md-9">
                            <h3>Persona de prova</h3>
                            <asp:Label ID="LabelMissatge" runat="server" CssClass="control-label"
                                Text="Label">Hola q tal em dic persona de prova i m'interesses :D</asp:Label>
                        </div>
                        <div class="col-md-1">
                            <asp:Label ID="LabelHora" runat="server" Text="Label">13:11</asp:Label>
                        </div>
                    </div>
                    <div class="row table-bordered">
                        <div class="col-md-2">
                            <img class="img-rounded img-responsive imatgeXats" alt="Bootstrap Image Preview" src="http://lorempixel.com/140/140/" />
                        </div>
                        <div class="col-md-9">
                            <h3>Persona de prova
                            </h3>
                            <asp:Label ID="Label1" runat="server" CssClass="control-label"
                                Text="Label">Hola q tal em dic persona de prova i m'interesses :D</asp:Label>
                        </div>
                        <div class="col-md-1">
                            <asp:Label ID="Label2" runat="server" Text="Label">13:11</asp:Label>
                        </div>
                    </div>
                    <div class="row table-bordered">
                        <div class="col-md-2">
                            <img class="img-rounded img-responsive imatgeXats" alt="Bootstrap Image Preview" src="http://lorempixel.com/140/140/" />
                        </div>
                        <div class="col-md-9">
                            <h3>Persona de prova
                            </h3>
                            <asp:Label ID="Label3" runat="server" CssClass="control-label"
                                Text="Label">Hola q tal em dic persona de prova i m'interesses :D</asp:Label>
                        </div>
                        <div class="col-md-1">
                            <asp:Label ID="Label4" runat="server" Text="Label">13:11</asp:Label>
                        </div>
                    </div>
                </div>
                <div id="espaiPubli" class="container-fluid table-bordered col-md-4">
                    <asp:Button ID="ButtonProva" runat="server" Text="Button" OnClick="ButtonProva_Click" CausesValidation="False" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>

