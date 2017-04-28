<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageIniciat.master" AutoEventWireup="true" CodeFile="PaginaPerfil.aspx.cs" Inherits="PaginaPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <link href="Estils/Perfil.css" rel="stylesheet" />
                    <br />
                    <section class="perfilsec1">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="col-sm-2">
                                        <img id="ImgPerfil" class="img img-circle img-responsive" src="Imatges/prova img face.jpg" runat="server" />
                                    </div>
                                    <div class="col-sm-6 col-sm-offset-1    ">
                                        <div class="col-md-4">
                                            <p class="dadesImportants"><asp:Label ID="LabelNom" runat="server" Text="Maria" Font-Size="XX-Large"></asp:Label></p>
                                            <p class="dadesImportants">Edat: <asp:Label ID="LabelEdat" runat="server" Text=""></asp:Label> </p>
                                            <p>Data de registre:  <asp:Label ID="LabelData" runat="server" Text=""></asp:Label></p>
                                            <p>Correu: <asp:Label ID="LabelCorreu" runat="server" Text=""></asp:Label></p>
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                        <center><asp:Button ID="ButtonCanviarDades" runat="server" Text="Modificar les dades" OnClick="ButtonCanviarDades_Click" /></center>
                                     </div>
                                </div>
                           </div>
                        </div>

                    </section>
                    
                    <section class="perfilsec2">
                        <div class="container-fluid">
                            <div class="row">
                               <div id="divGustos" class="col-md-4">
                                 <ul class="list-group" class="gustos-ul">
                                     <li class="list-group-item active gustos">Gustos</li>
                                 </ul>
                               </div>
                                <center>
                                   <div  class="col-md-4 ">
                                       <img class="img-responsive img-gustos" src="Imatges/gust.jpg" />
                                   </div>
                                    <div  class="col-md-4 ">
                                       <img class="img-responsive img-gustos" src="Imatges/music.jpg" />
                                   </div>
                                </center>
                           </div>
                        </div>


                        <div class="container-fluid marginsection">
                            <div class="row">
                                <center>
                                    <div  class="col-md-4 ">
                                       <img class="img-responsive img-gustos" src="Imatges/sport1.jpg" />
                                   </div>
                                </center>
                               <div id="divEsports" class="col-md-4">
                                        <ul id="Ul2" runat="server" class="list-group">
                                            <li class="list-group-item active">Esports</li>
                                        </ul>
                                    </div>
                                <center>
                                   
                                    <div  class="col-md-4 ">
                                       <img class="img-responsive img-gustos" src="Imatges/sport2.jpg" />
                                   </div>
                                </center>
                           </div>
                        </div>

                        <div class="container-fluid marginsection">
                            <div class="row">
                                <center>
                                   <div  class="col-md-4 ">
                                       <img class="img-responsive img-gustos" src="Imatges/smile.jpg" />
                                   </div>
                                    <div  class="col-md-4 ">
                                       <img class="img-responsive img-gustos" src="Imatges/sad.jpg" />
                                   </div>
                                </center>
                                <div id="divIV" class="col-md-4">
                                        <ul id="Ul3" runat="server" class="list-group">
                                            <li class="list-group-item active">Imperfeccions i virtuds</li>
                                        </ul>
                                </div>
                           </div>
                        </div>

                    </section>

                    <section class="perfilsec3">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="col-md-4 dadesSecundaries">
                                        <p>Color preferit: <asp:Label ID="LabelColor" runat="server" Text=""></asp:Label></p>
                                        <p>Figura: <asp:Label ID="LabelFigura" runat="server" Text=""></asp:Label> </p>
                                        <p>Tipus de cabell:  <asp:Label ID="LabelCabell" runat="server" Text=""></asp:Label></p>
                                        <p>Estat civil: <asp:Label ID="LabelCivil" runat="server" Text=""></asp:Label></p>
                                        <p>Fumador: <asp:Label ID="LabelFumar" runat="server" Text=""></asp:Label></p>
                                        <br />
                                    </div>
                                    <div class="col-md-4">
                                        <hr class="bar">
                                        <p class="frase" >“La capacidad de reír juntos es el amor” <br /> Françoise Sagan</p>
                                       
                                    </div>
                                    
                                </div>
                           </div>
                        </div>
                        
                    

                    </section>

                    <section class="perfilsec4">
                        <center><h2 class="titol">Qui busco?</h2></center>
                         <div class="container-fluid">
                            <div class="row">
                               
                           </div>

                    </section>
    <!--<div class="row dades">
        <div class="col-md-12 tenda"><asp:Label ID="LabelTecnica" runat="server" Text=""></asp:Label></div>        
    </div>-->





</asp:Content>
