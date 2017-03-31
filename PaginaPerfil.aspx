<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageIniciat.master" AutoEventWireup="true" CodeFile="PaginaPerfil.aspx.cs" Inherits="PaginaPerfil" %>

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
                        <img id="ImgPerfil" class="imatgeperfil" src="Imatges/prova img face.jpg" runat="server" />
                    </div>
                    <div class="col-md-3">
                        <div class="col-md-10">

                            <p>Nom: <asp:Label ID="LabelNom" runat="server" Text=""></asp:Label></p>
                            <p>Edat: <asp:Label ID="LabelEdat" runat="server" Text=""></asp:Label> </p>
                            <p>Data de registre:  <asp:Label ID="LabelData" runat="server" Text=""></asp:Label></p>
                            <p>Correu: <asp:Label ID="LabelCorreu" runat="server" Text=""></asp:Label></p>

                            
                        </div>

                        <div id="divGustos" class="col-md-10">
                            <ul class="list-group">
                                <li class="list-group-item active">Gustos</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="col-md-10">
                            <p>Color preferit: <asp:Label ID="LabelColor" runat="server" Text=""></asp:Label></p>
                            <p>Figura: <asp:Label ID="LabelFigura" runat="server" Text=""></asp:Label> </p>
                            <p>Tipus de cabell:  <asp:Label ID="LabelCabell" runat="server" Text=""></asp:Label></p>
                            <p>Estat civil: <asp:Label ID="LabelCivil" runat="server" Text=""></asp:Label></p>
                            <p>Fumador: <asp:Label ID="LabelFumar" runat="server" Text=""></asp:Label></p>
                            <br />
                        </div>
                        <div id="divEsports" class="col-md-10">
                            <ul id="LlistatEsports" runat="server" class="list-group">
                                <li class="list-group-item active">Esports</li>
                            </ul>
                        </div>
                        <div id="divIV" class="col-md-10">
                            <ul id="Ul1" runat="server" class="list-group">
                                <li class="list-group-item active">Imperfeccions i virtuds</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <asp:Button ID="ButtonCanviarDades" runat="server" Text="Modificar les dades" OnClick="ButtonCanviarDades_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>