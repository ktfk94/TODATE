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
                             <asp:Label ID="LabelNom" runat="server" Text="Nom: "></asp:Label>
                             <asp:Label ID="LabelEdat" runat="server" Text="Edat: "></asp:Label>
                             <asp:Label ID="LabelData" runat="server" Text="Data de Registre: "></asp:Label>
                             <asp:Label ID="LabelCorreu" runat="server" Text="Correu: "></asp:Label>
                        </div>

                        <div class="col-md-10">
                            <ul class="list-group">
                                <li class="list-group-item active">Gustos</li>
                                <li id="liGustos"class="list-group-item"></li>
    
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="col-md-10">
                            <p>Color preferit: vermell</p>
                            <p>Figura: esbelta</p>
                            <p>Tipus de cabell: llis</p>
                            <p>Estat civil: solter/a</p>
                            <p>Fumador:Weed</p>
                            <br />
                        </div>
                        <div class="col-md-10">
                            <ul class="list-group">
                                <li class="list-group-item active">Esports</li>
                                <li class="list-group-item">Bàsquet</li>
                                <li class="list-group-item">Futbol</li>
                                <li class="list-group-item">Dansa</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <asp:Button ID="ButtonCanviarDades" runat="server" Text="CanviarDades" OnClick="ButtonCanviarDades_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>