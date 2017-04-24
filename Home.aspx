<%@ Page Title="" Language="C#" MasterPageFile="~/PagMestre.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
    <link href="Estils/HomeCSS.css" rel="stylesheet" />

    <script type="text/javascript">
        function showModal() {
            $('#ModalLogIn').modal('show');
        }
    </script>

    <div class="form group">
        <asp:Button ID="Button1" CssClass="btn btn-info btn-lg col-sm-offset-5 col-sm-2 buto" Visible="false" runat="server" Text="Comença" OnClick="Button1_Click" />
    </div>
    <div class ="col-sm-offset-4 col-sm-6">
        <img class="img-responsive" src="Imatges/Sin título.png" alt="" />

    </div>

    <!--INICI MODAL-->
        <div class="modal fade" id="ModalLogIn" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Inicia Sessió</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group" >
                            <asp:Label ID="LabelDadesNom" CssClass="col-sm-2 control-label" style="margin-bottom:20px;" runat="server" Text="Usuari"></asp:Label>
                            <div class="col-sm-10" >
                                <asp:TextBox ID="TextBoxDadesNom" style="margin-bottom:20px;" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <asp:Label ID="LabelDadesContrasenya" CssClass="col-sm-2 control-label" runat="server" Text="Contrasenya"></asp:Label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="TextBoxDadesContra" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group" id="buttonIniciSessio">
                            <asp:Label ID="LabelRecuperar" CssClass="label label-warning" runat="server" Text="Has oblidat la contrasenya?"></asp:Label><br />
                            <asp:Label ID="LabelError" CssClass="label label-danger" runat="server" Text="El correu o la contrasenya son incorrectes" Visible="false"></asp:Label>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                        <asp:LinkButton ID="LinkButtonAcceptar" CssClass="btn btn-primary" runat="server" OnClick="LinkButtonAcceptar_Click" CausesValidation="false">
                            <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Acceptar
                        </asp:LinkButton>
                    </div>
                </div>

            </div>
        </div>
    <!--FI MODAL-->

   
  
</asp:Content>

