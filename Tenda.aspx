<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageIniciat.master" AutoEventWireup="true" CodeFile="Tenda.aspx.cs" Inherits="Tenda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="Estils/EstilTenda.css" rel="stylesheet" />
    <div id="divMsg" class="alert alert-success" role="alert" runat="server">
        Compra realitzada <strong>correctament!</strong>
    </div>
    <div id="divError" class="alert alert-danger" role="alert" runat="server">
        No tens tokens <strong>suficients!</strong>
    </div>
    <div class="panel panel-primary" id="PanelTenda" runat="server">
        <!-- COM POSAR UNA BARRA DE PROGRÉS 3.3 -->
        <div class="panel-heading"><h3>Benvingut a la tenda de Todate!</h3></div>
        <div class="panel-body">
            <asp:Label ID="LabelInfo" runat="server">
                Pots comprar serveis per millorar la teva experiència amb la nostra aplicació.
            </asp:Label>
            <asp:Label ID="LabelTokens" CssClass="label label-success" runat="server">
                Tens <span id="Tokens" runat="server">3</span> tokens
            </asp:Label>
            <div class="container-fluid">
	            <div class="row">
		            <div class="col-md-12">
			            <div class="row">
				            <div class="col-md-6">
                                <div class="producte">
	                                <div class="row">
		                                <div class="col-md-4">
			                                <img alt="Bootstrap Image Preview" src="http://lorempixel.com/140/140/" />
		                                </div>
		                                <div class="textProducte col-md-4">
                                            <asp:Label ID="LabelProducte1" runat="server">
                                                El pròxim contacte sortirà en 6 hores, en comptes de 8.
                                            </asp:Label>
		                                </div>
		                                <div class="col-md-4">
			                                <asp:Label ID="LabelPreuProducte1" runat="server">1 Token</asp:Label>
                                            <div>
                                                <asp:Button ID="ButtonProducte1" class="btn btn-default" runat="server" Text="Comprar" OnClick="ButtonProducte1_Click" />
                                            </div>	
                                            <div>
                                                <asp:Label ID="LabelGratis" CssClass="label label-info" runat="server" Text="Primer ús gratuït"></asp:Label>
                                            </div>		                                
		                                </div>
	                                </div>
                                </div>
				            </div>
				            <div class="col-md-6">
                                <div class="producte">
	                                <div class="row">
		                                <div class="col-md-4">
			                                <img alt="Bootstrap Image Preview" src="http://lorempixel.com/140/140/" />
		                                </div>
		                                <div class="textProducte col-md-4">
                                            <asp:Label ID="LabelProducte2" runat="server">
                                                Obtens un nou contatce JA!
                                            </asp:Label>
		                                </div>
		                                <div class="col-md-4">
			                                <asp:Label ID="LabelPreuProducte2" runat="server">4 Token</asp:Label>
                                            <div>
                                                <asp:Button ID="ButtonProducte2" class="btn btn-default" runat="server" Text="Comprar" OnClick="ButtonProducte2_Click" />
                                            </div>	
		                                </div>
	                                </div>
                                </div>
				            </div>
			            </div>
		            </div>
	            </div>
	            <div class="row">
		            <div class="col-md-12">
			            <div class="row">
				            <div class="col-md-6">
                                <div class="producte">
	                                <div class="row">
		                                <div class="col-md-4">
			                                <img alt="Bootstrap Image Preview" src="http://lorempixel.com/140/140/" />
		                                </div>
		                                <div class="textProducte col-md-4">
                                            <asp:Label ID="LabelProducte3" runat="server">
                                                Els pròxims 3 contactes tarden 5 hores, en comptes de 8.
                                            </asp:Label>
		                                </div>
		                                <div class="col-md-4">
			                                <asp:Label ID="LabelPreuProducte3" runat="server">5 Token</asp:Label>
                                            <div>
                                                <asp:Button ID="ButtonProducte3" class="btn btn-default" runat="server" Text="Comprar" OnClick="ButtonProducte3_Click" />
                                            </div>	
		                                </div>
	                                </div>
                                </div>
				            </div>
				            <div class="col-md-6">
                                <div class="producte">
	                                <div class="row">
		                                <div class="col-md-4">
			                                <img alt="Bootstrap Image Preview" src="http://lorempixel.com/140/140/" />
		                                </div>
		                                <div class="textProducte col-md-4">
                                            <asp:Label ID="LabelProducte4" runat="server">
                                                Tots els contactes tardan 7 hores.
                                            </asp:Label>
		                                </div>
		                                <div class="col-md-4">
			                                <asp:Label ID="LabelPreuProducte4" runat="server">8 Token</asp:Label> 
			                                <div>
                                                <asp:Button ID="ButtonProducte4" class="btn btn-default" runat="server" Text="Comprar" OnClick="ButtonProducte4_Click" />
                                            </div>                                            
		                                </div>
	                                </div>
                                </div>
				            </div>
			            </div>
		            </div>
	            </div>
            </div>     
        </div>
    </div>
</asp:Content>

