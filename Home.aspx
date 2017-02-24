<%@ Page Title="" Language="C#" MasterPageFile="~/PagMestre.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
    <link href="Estils/HomeCSS.css" rel="stylesheet" />


    <div class="form group">
        <asp:Button ID="Button1" CssClass="btn btn-info btn-lg col-sm-offset-5 col-sm-2 buto" Visible="false" runat="server" Text="Comença" OnClick="Button1_Click" />
    </div>
    <div class ="col-sm-offset-4 col-sm-6">
        <img class="img-responsive" src="Imatges/Sin título.png" alt="" />

    </div>
    
  
</asp:Content>

