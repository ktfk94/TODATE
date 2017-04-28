<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageIniciat.master" AutoEventWireup="true" CodeFile="PerfilModificarDades.aspx.cs" Inherits="PerfilModificarDades" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <link href="Estils/ModificarPerfil.css" rel="stylesheet" />

     <h2 style="text-align: center">Modificar les dades de Perfil</h2>
     <br />

    <section class="perfilsec1">
      <div class="container-fluid">
          <div class="row">
               <div class="col-sm-12">
                   <div class="col-sm-2">
                        <img class="imatgeperfil img-circle img-responsive" runat="server" src="Imatges/prova img face.jpg" id="Img1" />
                   </div>
                   <div class="col-md-6 col-md-offset-1    ">
                        <div class="col-md-4">
                            <p class="dadesImportants">Nom: <asp:TextBox ID="TextBoxNom" runat="server"/></p>
                            <p class="dadesImportants">Edat: <asp:Label ID="LabelEdat" runat="server"></asp:Label></p>
                            <p>Data registre: <asp:Label ID="LabelData" runat="server"></asp:Label></p>
                            <p>Correu electrònic: <asp:Label ID="LabelMail" runat="server"></asp:Label></p>
                            <br />
                   </div>
                   </div>
                  <div class="col-md-2">
                      <center><asp:Button ID="Button1" runat="server" Text="Modificar les dades" OnClick="ButtonCanviarDades_Click" /></center>
                       </div>
                </div>
             </div>
         </div>
    </section>


    <section class="perfilsec2">
                        <div class="container-fluid">
                            <div class="row">
                               <div id="divGustos" class="col-md-4">
                                    <ul class="list-group">
                                        <li class="list-group-item active">Gustos</li>
                                    </ul>
                                    <asp:TextBox ID="TextBoxAfegirGust" runat="server" ClientIDMode="Static"/>
                                    <asp:LinkButton ID="LinkButtonAfegirGust" runat="server" CausesValidation="False" ClientIDMode="Static" OnClientClick="return false;">
                                        <span aria-hidden="true" class="glyphicon glyphicon-plus"></span>
                                    </asp:LinkButton>
                                </div>
                                <div id="divEsports" class="col-md-4">
                                    <ul id="Ul4" runat="server" class="list-group">
                                        <li class="list-group-item active">Esports</li>
                                    </ul>
                                    <asp:TextBox ID="TextBox2" runat="server" ClientIDMode="Static"/>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" ClientIDMode="Static" OnClientClick="return false;">
                                        <span aria-hidden="true" class="glyphicon glyphicon-plus"></span>
                                    </asp:LinkButton>
                                </div>
                                <div id="divIV" class="col-md-4">
                                    <ul id="Ul5" runat="server" class="list-group">
                                        <li class="list-group-item active">Imperfeccions i virtuds</li>
                                    </ul>
                                    <asp:TextBox ID="TextBox3" runat="server" ClientIDMode="Static"/>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" ClientIDMode="Static" OnClientClick="return false;">
                                        <span aria-hidden="true" class="glyphicon glyphicon-plus"></span>
                                    </asp:LinkButton>
                                </div>
                                
                           </div>
                        </div>
                 </section>
            
                 <section class="perfilsec3">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="col-md-8 dadesSecundaries">
                                       <div class="col-md-12">
                                           <div class="form-group">
                                                <asp:Label ID="LabelColor" CssClass=" col-sm-3 control-label" runat="server" Text="Color preferit"></asp:Label>
                                                <div style="margin-bottom:10px;" class="col-sm-7">
                                                    <asp:TextBox ID="TextBoxColor" runat="server"/>
                                                </div>
                                            </div>
                                           <div class="form-group"> 
                                                <asp:Label ID="LabelFigura" CssClass=" col-sm-3 control-label" runat="server" Text="Figura"></asp:Label>
                                                <div style="margin-bottom:10px;" class="col-sm-7">
                                                    <asp:TextBox ID="TextBoxFigura" runat="server"/>
                                                </div>
                                            </div>
                                           <div class="form-group"> 
                                                <asp:Label ID="Labelcabell" CssClass=" col-sm-3 control-label" runat="server" Text="Tipus de cabell"></asp:Label>
                                                <div style="margin-bottom:10px;" class="col-sm-7">
                                                    <asp:TextBox ID="TextBoxCabell" runat="server"/>
                                                </div>
                                            </div>
                                           <div class="form-group"> 
                                                <asp:Label ID="LabelCivil" CssClass=" col-sm-3 control-label" runat="server" Text="Estat civil"></asp:Label>
                                                <div style="margin-bottom:10px;" class="col-sm-7">
                                                    <asp:TextBox ID="TextBoxCivil" runat="server"/>
                                                </div>
                                            </div>
                                           <div class="form-group"> 
                                                <asp:Label ID="LabelFumador" CssClass=" col-sm-3 control-label" runat="server" Text="Fumador"></asp:Label>
                                                <div style="margin-bottom:10px;" class="col-sm-7">
                                                    <asp:TextBox ID="TextBoxFumador" runat="server"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <hr class="bar">
                                        <p class="frase" ></p>
                                        <div class="col-md-1">
                                            <asp:Button ID="ButtonCanviarDades" runat="server" Text="Guardar dades" OnClick="ButtonCanviarDades_Click" UseSubmitBehavior="False"/>
                                         </div>
                                       
                                    </div>
                                    
                                    
                                </div>
                           </div>
                        </div>
                    </section>

</asp:Content>
