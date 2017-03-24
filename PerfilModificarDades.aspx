<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageIniciat.master" AutoEventWireup="true" CodeFile="PerfilModificarDades.aspx.cs" Inherits="PerfilModificarDades" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid">
        <div class="row">
            <h2 style="text-align: center">Dades de Perfil</h2>
            <br />
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-3">
                        <img class="imatgeperfil" src="Imatges/prova img face.jpg" />
                    </div>
                    <div class="col-md-4">
                        <div class="col-md-10">
                            <p>Nom: <asp:TextBox ID="TextBoxNom" runat="server"/></p>
                            <p>Edat: <asp:TextBox ID="TextBoxEdat" runat="server"/></p>
                            <p>Data registre: <asp:TextBox ID="TextBoxData" runat="server"/></p>
                            <p>Correu electrònic: <asp:TextBox ID="TextBoxCorreu" runat="server"/></p>
                            <br />
                        </div>

                        <div class="col-md-10">
                            <ul class="list-group">
                                <li class="list-group-item active">Gustos</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="col-md-10">
                            <p>Color preferit: <asp:TextBox ID="TextBoxColor" runat="server"/></p>
                            <p>Figura: <asp:TextBox ID="TextBoxFigura" runat="server"/></p>
                            <p>Tipus de cabell: <asp:TextBox ID="TextBoxCabell" runat="server"/></p>
                            <p>Estat civil: <asp:TextBox ID="TextBoxCivil" runat="server"/></p>
                            <p>Fumador: <asp:TextBox ID="TextBoxFumador" runat="server"/></p>
                            <br />
                        </div>
                        <div id="divEsports" class="col-md-10">
                            <ul id="LlistatEsports" runat="server" class="list-group">
                                <li class="list-group-item active">Esports</li>
                                <li class="list-group-item">
                                    <asp:TextBox runat="server" Text="golf"/>
                                    <asp:LinkButton ID="LinkButton1" runat="server">
                                        <span aria-hidden="true" class="glyphicon glyphicon-remove"></span>
                                    </asp:LinkButton>
                                </li>
                            </ul>
                            <asp:TextBox ID="TextBoxAfegirEsport" runat="server" ClientIDMode="Static"/>
                            <asp:LinkButton ID="LinkButtonAfegirEsport" runat="server" CausesValidation="False" ClientIDMode="Static" OnClick="LinkButtonAfegirEsport_Click">
                                <span aria-hidden="true" class="glyphicon glyphicon-plus"></span>
                            </asp:LinkButton>
                        </div>
                    </div>
                    <div class="col-md-1">
                        <asp:Button ID="ButtonCanviarDades" runat="server" Text="CanviarDades" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

