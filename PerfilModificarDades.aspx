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
                    <div class="col-md-3">
                        <div class="col-md-10">
                            <p>Nom: Ona</p>
                            <p>Nom usuari: Queralt</p>
                            <p>Edat: 42</p>
                            <p>Data registre: getDate()</p>
                            <p>Correu electrònic: a@a.com</p>
                            <br />
                        </div>

                        <div class="col-md-10">
                            <ul class="list-group">
                                <li class="list-group-item active">Gustos</li>
                                <li class="list-group-item">Videojocs</li>
                                <li class="list-group-item">Programar</li>
                                <li class="list-group-item">Veure sèreis</li>
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
                        <asp:Button ID="ButtonCanviarDades" runat="server" Text="CanviarDades" />
                    </div>
                </div>
            </div>
        </div>
    </div>







</asp:Content>

