<%@ Page Title="" Language="C#" MasterPageFile="~/PagMestre.master" AutoEventWireup="true" CodeFile="Registre.aspx.cs" Inherits="Registre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="panel panel-primary" id="titol" runat="server">
        <div class="panel-heading">
            <h3>Registre</h3>
        </div>
    </div>

    <div class="panel panel-primary" id="PanelBarraProgres" runat="server">
        <!-- COM POSAR UNA BARRA DE PROGRÉS 3.3 -->
        <div class="panel-heading"></div>
        <div class="panel-body"></div>
    </div>

    <div class="panel panel-primary" id="PanelMissatges" runat="server">
        <div class="panel-body"></div>
    </div>

    <div class="panel panel-primary" id="PanelInici" runat="server">
        <div class="panel-heading">
            <asp:Label ID="LabelQuiQueTitol" CssClass="control-label" runat="server" Text="Quí soc i què busco?"></asp:Label>
        </div>
        <div class="panel-body">
            <div class="form-group" id="quiQue">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-5">
                            <h4>Qui soc?</h4>
                            <div class="row">
                                <div class="col-md-4">
                                    <asp:Image ID="ImageSocHome" CssClass="imgRegistre" runat="server" ImageUrl="~/Imatges/simbol_home.png" ToolTip="Soc home"></asp:Image>
                                    <asp:RadioButton ID="RadioButtonSocHome" runat="server" GroupName="Soc"></asp:RadioButton>
                                </div>
                                <div class="col-md-4">
                                    <asp:Image ID="ImageSocDona" CssClass="imgRegistre" runat="server" ImageUrl="~/Imatges/simbol_dona.png" ToolTip="Soc dona"></asp:Image>
                                    <asp:RadioButton ID="RadioButtonSocDona" runat="server" GroupName="Soc"></asp:RadioButton>
                                </div>
                                <div class="col-md-4">
                                    <asp:Image ID="ImageSocNeutre" CssClass="imgRegistre" runat="server" ImageUrl="~/Imatges/simbolNeutre.jpg" ToolTip="Indefinit"></asp:Image>
                                    <asp:RadioButton ID="RadioButtonSocNeutre" runat="server" GroupName="Soc"></asp:RadioButton>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7">
                            <h4>Què busco?</h4>
                            <div class="row">
                                <div class="col-md-3">
                                    <asp:Image ID="ImageBuscoHome" CssClass="imgRegistre" runat="server" ImageUrl="~/Imatges/simbol_home.png" ToolTip="Busco home"></asp:Image>
                                    <asp:RadioButton ID="RadioButtonBuscoHome" runat="server" GroupName="Busco"></asp:RadioButton>
                                </div>
                                <div class="col-md-3">
                                    <asp:Image ID="ImageBuscoDona" CssClass="imgRegistre" runat="server" ImageUrl="~/Imatges/simbol_dona.png" ToolTip="Busco dona"></asp:Image>
                                    <asp:RadioButton ID="RadioButtonBuscoDona" runat="server" GroupName="Busco"></asp:RadioButton>
                                </div>
                                <div class="col-md-3">
                                    <asp:Image ID="ImageBuscoDoble" CssClass="imgRegistre" runat="server" ImageUrl="~/Imatges/simbolDoble.png" ToolTip="Busco ambdós"></asp:Image>
                                    <asp:RadioButton ID="RadioButtonBuscoDoble" runat="server" GroupName="Busco"></asp:RadioButton>
                                </div>
                                <div class="col-md-3">
                                    <asp:Image ID="ImageBuscoNeutre" CssClass="imgRegistre" runat="server" ImageUrl="~/Imatges/simbolNeutre.jpg" ToolTip="Busco indefinit"></asp:Image>
                                    <asp:RadioButton ID="RadioButtonBuscoNeutre" runat="server" GroupName="Busco"></asp:RadioButton>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group" id="correu">
                <asp:Label ID="LabelCorreu" CssClass="col-sm-2 control-label" runat="server" Text="Correu electrònic"></asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBoxCorreu" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCorreu" CssClass="alert-danger label-danger label" runat="server"
                        ErrorMessage="El correu és necessari!" ControlToValidate="TextBoxCorreu" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group" id="contra">
                <asp:Label ID="LabelContra" CssClass="col-sm-2 control-label" runat="server" Text="Contrasenya"></asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBoxContra" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorContra" CssClass="alert-danger label-danger label" runat="server"
                        ErrorMessage="La contrasenya és necessaria!" ControlToValidate="TextBoxContra" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group" id="conf">
                <asp:Label ID="LabelConf" CssClass="col-sm-2 control-label" runat="server" Text="Confirmar la contrasenya"></asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBoxConf" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorConf" CssClass="alert-danger label-danger label" runat="server"
                        ErrorMessage="La confirmació de la contrasenya és necessaria!" ControlToValidate="TextBoxConf" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidatorConf" runat="server" ErrorMessage="Les contrasenyes no són iguals!" Display="Dynamic"
                        ControlToCompare="TextBoxContra" ControlToValidate="TextBoxConf"></asp:CompareValidator>
                </div>
            </div>
        </div>
    </div>

    <div class="panel panel-primary" id="PanelBenvinguda" runat="server">
        <div class="panel-heading">
            <asp:Label ID="LabelBenvinguda" CssClass="control-label" runat="server" Text="Estem molt contents que hagis escollit Todate!"></asp:Label>
        </div>
        <div class="panel-body">
            <div class="form-group">
                <asp:Label ID="LabelInfo" runat="server" CssClass="col-sm-offset-1 col-sm-9 control-label text-center"
                    Text="Volem saber més coses sobre tu per a poder crear un perfil complet. Primer de tot, necessitarem una fotografía teva que servirà com a fotografía
                     de perfil. La pots canviar en qualsevol moment des del perfil. Si vols en pots introduïr més d'una."></asp:Label>
                <!-- COM POSAR UNA FOTUUUUUUUU -->
                <asp:Image ID="ImagePerfil" CssClass="pujarImgPerfil" runat="server" />
            </div>
            <div class="form-group" id="fotu">
                <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="False" />
                <asp:Button ID="ButtonPujar" runat="server" Text="Pujar" OnClick="ButtonPujar_Click" />
            </div>
        </div>
    </div>

    <div class="panel panel-primary" id="PanelDadesNecessaries" runat="server">
        <div class="panel-heading">
            <asp:Label ID="LabelNecessariesTitol" CssClass="control-label" runat="server" Text="Dades necessaries"></asp:Label>
        </div>
        <div class="panel-body">
            <div class="form-group">
                <asp:Label ID="LabelNom" CssClass="col-sm-2 control-label" runat="server" Text="Nom"></asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBoxNom" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorNom" CssClass="alert-danger label-danger label" runat="server"
                        ErrorMessage="El nom és necessari!" ControlToValidate="TextBoxNom" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelCognoms" CssClass="col-sm-2 control-label" runat="server" Text="Cognoms"></asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBoxCognoms" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCognoms" CssClass="alert-danger label-danger label" runat="server"
                        ErrorMessage="Els cognoms són necessaris!" ControlToValidate="TextBoxCognoms" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group" id="dataNaix">
                <asp:Label ID="LabelDataNaix" CssClass="col-sm-2 control-label" runat="server" Text="Data de naixement"></asp:Label>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-2">
                            <asp:Label ID="LabelDia" CssClass="control-label" runat="server" Text="Dia"></asp:Label>
                            <asp:DropDownList ID="DropDia" CssClass="dropdown" runat="server">
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-2">
                            <asp:Label ID="LabelMes" CssClass="control-label" runat="server" Text="Mes"></asp:Label>
                            <asp:DropDownList ID="DropMes" CssClass="dropdown" runat="server">
                                <asp:ListItem>Gener</asp:ListItem>
                                <asp:ListItem>Febrer</asp:ListItem>
                                <asp:ListItem>Març</asp:ListItem>
                                <asp:ListItem>Abril</asp:ListItem>
                                <asp:ListItem>Maig</asp:ListItem>
                                <asp:ListItem>Juny</asp:ListItem>
                                <asp:ListItem>Juliol</asp:ListItem>
                                <asp:ListItem>Agost</asp:ListItem>
                                <asp:ListItem>Setembre</asp:ListItem>
                                <asp:ListItem>Octubre</asp:ListItem>
                                <asp:ListItem>Novembre</asp:ListItem>
                                <asp:ListItem>Desembre</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-2">
                            <asp:Label ID="LabelAny" CssClass="control-label" runat="server" Text="Any"></asp:Label>
                            <asp:DropDownList ID="DropAny" CssClass="dropdown" runat="server">
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
            </div>
            <!-- RECOLLIR UBICACIÓ AUTOMÀTICAMENT -->
        </div>
    </div>

    <div class="panel panel-primary" id="PanelDadesPersonals" runat="server">
        <div class="panel-heading">
            <asp:Label ID="LabelDadesPersonals" CssClass="control-label" runat="server" Text="Dades personals"></asp:Label>
        </div>
        <div class="panel-body">
            <div class="form-group">
                <asp:Label ID="LabelColor" CssClass="col-sm-2 control-label" runat="server" Text="Color preferit"></asp:Label>
                <asp:DropDownList ID="DropdownlistColor" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>Blanc</asp:ListItem>
                    <asp:ListItem>Negre</asp:ListItem>
                    <asp:ListItem>Vermell</asp:ListItem>
                    <asp:ListItem>Groc</asp:ListItem>
                    <asp:ListItem>Blau</asp:ListItem>
                    <asp:ListItem>Taronja</asp:ListItem>
                    <asp:ListItem>Verd</asp:ListItem>
                    <asp:ListItem>Rosa</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelCabell" CssClass="col-sm-2 control-label" runat="server" Text="Tipus de cabell"></asp:Label>
                <asp:DropDownList ID="DropdownlistCabell" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>Llis</asp:ListItem>
                    <asp:ListItem>Ondulat</asp:ListItem>
                    <asp:ListItem>Arrissat</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelFigura" CssClass="col-sm-2 control-label" runat="server" Text="Figura"></asp:Label>
                <asp:DropDownList ID="DropdownlistFigura" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>Esvelta</asp:ListItem>
                    <asp:ListItem>Corpulenta</asp:ListItem>

                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelGustos" CssClass="col-sm-2 control-label" runat="server" Text="Gustos"></asp:Label>
                <asp:CheckBoxList ID="CheckListGustos" runat="server" CellPadding="1" CellSpacing="1" RepeatColumns="9" BorderStyle="Solid" BorderWidth="1px">
                    <asp:ListItem>Caminar</asp:ListItem>
                    <asp:ListItem>Musica</asp:ListItem>
                    <asp:ListItem>Correr</asp:ListItem>
                    <asp:ListItem>Videojocs</asp:ListItem>
                    <asp:ListItem>Llegir</asp:ListItem>
                    <asp:ListItem>Veure una pel·lícula</asp:ListItem>
                    <asp:ListItem>Comprar</asp:ListItem>
                    <asp:ListItem>Sortir amb els amics</asp:ListItem>
                    <asp:ListItem>Anar en bicicleta</asp:ListItem>
                    <asp:ListItem>Fer esport</asp:ListItem>
                    <asp:ListItem>Programar :D</asp:ListItem>
                    <asp:ListItem>Dibuixar</asp:ListItem>
                    <asp:ListItem>Cuinar</asp:ListItem>
                    <asp:ListItem>Netejar</asp:ListItem>
                    <asp:ListItem>Esquiar</asp:ListItem>
                    <asp:ListItem>Nedar</asp:ListItem>
                    <asp:ListItem>Estudiar</asp:ListItem>
                    <asp:ListItem>Treballar</asp:ListItem>
                </asp:CheckBoxList>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelEsports" CssClass="col-sm-2 control-label" runat="server" Text="Esports"></asp:Label>
                <asp:DropDownList ID="DropdownlistEsports" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>No faig esport</asp:ListItem>
                    <asp:ListItem>Bàsquet</asp:ListItem>
                    <asp:ListItem>Fútbol</asp:ListItem>
                    <asp:ListItem>Tennis</asp:ListItem>
                    <asp:ListItem>Natació</asp:ListItem>
                    <asp:ListItem>Golf</asp:ListItem>
                    <asp:ListItem>Handbol</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelOrigen" CssClass="col-sm-2 control-label" runat="server" Text="Origen"></asp:Label>
                <asp:DropDownList ID="DropdownlistOrigen" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelReligio" CssClass="col-sm-2 control-label" runat="server" Text="Religió"></asp:Label>
                <asp:DropDownList ID="DropdownlistReligió" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>No creient</asp:ListItem>
                    <asp:ListItem>Catòlic</asp:ListItem>
                    <asp:ListItem>Budisme</asp:ListItem>
                    <asp:ListItem>Musulmà</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelCivil" CssClass="col-sm-2 control-label" runat="server" Text="Estat civil"></asp:Label>
                <asp:DropDownList ID="DropdownlistCivil" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>Solter/a</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelFills" CssClass="col-sm-2 control-label" runat="server" Text="Tens fills?"></asp:Label>
                <asp:RadioButton ID="RadiobuttonFillsSi" runat="server" GroupName="fills" Text="Si"></asp:RadioButton>
                <asp:RadioButton ID="RadiobuttonFillsNo" runat="server" GroupName="fills" Text="No"></asp:RadioButton>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelFumar" CssClass="col-sm-2 control-label" runat="server" Text="Ets fumador?"></asp:Label>
                <asp:RadioButton ID="RadioFumarSi" runat="server" GroupName="SocFumador" Text="Si"></asp:RadioButton>
                <asp:RadioButton ID="RadioFumarNo" runat="server" GroupName="SocFumador" Text="No"></asp:RadioButton>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelIV" CssClass="col-sm-2 control-label" runat="server" Text="Imperfeccions i virtuts"></asp:Label>
                <asp:CheckBoxList ID="CheckboxlistIV" runat="server" CellPadding="1" CellSpacing="1" RepeatColumns="9" BorderStyle="Solid" BorderWidth="1px">
                    <asp:ListItem>Alegre</asp:ListItem>
                    <asp:ListItem>Enèrgic</asp:ListItem>
                    <asp:ListItem>Romàntic</asp:ListItem>
                    <asp:ListItem>Capsigrany</asp:ListItem>
                </asp:CheckBoxList>
            </div>
        </div>
    </div>

    <div class="panel panel-primary" id="PanelOpcionsRelacio" runat="server">
        <div class="panel-heading">
            <asp:Label ID="LabelRel" CssClass="control-label" runat="server" Text="Com vols que sigui la persona que busques?"></asp:Label>
        </div>
        <div class="panel-body">
            <div class="form-group">
                <asp:Label ID="LabelTipusRel" CssClass="col-sm-2 control-label" runat="server" Text="Tipus de relació"></asp:Label>
                <asp:DropDownList ID="DropdownlistRelació" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>Buscar parella</asp:ListItem>
                    <asp:ListItem>Aventura</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelBuscarEdat" CssClass="col-sm-2 control-label" runat="server" Text="Quina edat aproximada busques en una relació?"></asp:Label>
                <asp:Label ID="LabelMin" runat="server" Text="Min"></asp:Label>
                <asp:DropDownList ID="DropdownlistEdatMin" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="LabelMax" runat="server" Text="Max"></asp:Label>
                <asp:DropDownList ID="DropdownlistEdatMax" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>100s</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group-pers">
                <asp:Label ID="LabelBuscarColor" CssClass="col-sm-2 control-label" runat="server" Text="Color preferit"></asp:Label>
                <asp:DropDownList ID="DropdownlistBuscarColor" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>Blanc</asp:ListItem>
                    <asp:ListItem>Negre</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelBuscarCabell" CssClass="col-sm-2 control-label" runat="server" Text="Tipus de cabell"></asp:Label>
                <asp:DropDownList ID="DropdownlistBuscarCabell" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>Llis</asp:ListItem>
                    <asp:ListItem>Ondulat</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelBuscarFigura" CssClass="col-sm-2 control-label" runat="server" Text="Figura"></asp:Label>
                <asp:DropDownList ID="DropdownlistBuscarFigura" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>Esvelta</asp:ListItem>
                    <asp:ListItem>Potent</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelBuscarCivil" CssClass="col-sm-2 control-label" runat="server" Text="Estat civil"></asp:Label>
                <asp:DropDownList ID="DropdownlistBuscarCivil" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>Solter/a</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelBuscarFills" CssClass="col-sm-2 control-label" runat="server" Text="Que tingui fills?"></asp:Label>
                <asp:RadioButton ID="RadiobuttonBuscarFillsSi" runat="server" GroupName="BuscoFills" Text="Si"></asp:RadioButton>
                <asp:RadioButton ID="RadiobuttonBuscarFillsNo" runat="server" GroupName="BuscoFills" Text="No"></asp:RadioButton>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelFumador" CssClass="col-sm-2 control-label" runat="server" Text="T'importa que sigui fumador?"></asp:Label>
                <asp:RadioButton ID="RadiobuttonBuscoFumarSi" runat="server" GroupName="BuscoFumador" Text="Si"></asp:RadioButton>
                <asp:RadioButton ID="RadiobuttonBuscoFumarNo" runat="server" GroupName="BuscoFumador" Text="No"></asp:RadioButton>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelBuscarEsports" CssClass="col-sm-2 control-label" runat="server" Text="Quin esport vols que faci?"></asp:Label>
                <asp:DropDownList ID="DropdownlistBuscarEsports" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>Que no faci esport</asp:ListItem>
                    <asp:ListItem>Bàsquet</asp:ListItem>
                    <asp:ListItem>Fútbol</asp:ListItem>
                    <asp:ListItem>Tennis</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelBuscarGustos" CssClass="col-sm-2 control-label" runat="server" Text="Quins gustos vols que tingui?"></asp:Label>
                <asp:CheckBoxList ID="CheckboxlistBuscarGustos" runat="server" CellPadding="1" CellSpacing="1" RepeatColumns="9" BorderStyle="Solid" BorderWidth="1px">
                    <asp:ListItem>Caminar</asp:ListItem>
                    <asp:ListItem>Musica</asp:ListItem>
                    <asp:ListItem>Correr</asp:ListItem>
                    <asp:ListItem>Videojocs</asp:ListItem>
                    <asp:ListItem>Llegir</asp:ListItem>
                    <asp:ListItem>Veure una peli</asp:ListItem>
                    <asp:ListItem>Comprar</asp:ListItem>
                    <asp:ListItem>Sortir amb els amics</asp:ListItem>
                    <asp:ListItem>Anar en bicicleta</asp:ListItem>
                    <asp:ListItem>Fer esport</asp:ListItem>
                    <asp:ListItem>Programar :D</asp:ListItem>
                    <asp:ListItem>Dibuixar</asp:ListItem>
                    <asp:ListItem>Cuinar</asp:ListItem>
                    <asp:ListItem>Netejar</asp:ListItem>
                    <asp:ListItem>Esquiar</asp:ListItem>
                    <asp:ListItem>Nedar</asp:ListItem>
                    <asp:ListItem>Estudiar</asp:ListItem>
                    <asp:ListItem>Treballar</asp:ListItem>
                    <asp:ListItem>Fer la croqueta</asp:ListItem>
                </asp:CheckBoxList>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelBuscarIV" CssClass="col-sm-2 control-label" runat="server" Text="Imperfeccions i virtuts?"></asp:Label>
                <asp:CheckBoxList ID="CheckboxlistBuscarIV" runat="server" CellPadding="1" CellSpacing="1" RepeatColumns="9" BorderStyle="Solid" BorderWidth="1px">
                    <asp:ListItem>Alegre</asp:ListItem>
                    <asp:ListItem>Enèrgic</asp:ListItem>
                    <asp:ListItem>Romàntic</asp:ListItem>
                    <asp:ListItem>Capsigrany</asp:ListItem>
                </asp:CheckBoxList>
            </div>
        </div>
    </div>

    <div class="panel panel-primary" id="BotoContinuar" runat="server">
        <div class="panel-body">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        <asp:LinkButton ID="LinkButtonEnrrere" runat="server" OnClick="LinkButtonEnrrere_Click" CausesValidation="False">Enrrere</asp:LinkButton>
                    </div>
                    <div class="col-md-6" id="butoContinuarRegistre">
                        <asp:Label ID="LabelFi" CssClass="label label-warning" runat="server" Text=""></asp:Label>
                        <asp:LinkButton ID="LinkButtonContinuar" runat="server" OnClick="LinkButtonContinuar_Click">Continuar</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--INICI MODAL-->
    <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">
                Modal content
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Inicia Sessió</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <asp:Label ID="LabelDadesNom" CssClass="col-sm-2 control-label" runat="server" Text="Usuari"></asp:Label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="TextBoxDadesNom" CssClass="form-control" runat="server"></asp:TextBox>
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
                            <asp:Label ID="Label1" CssClass="label label-danger" runat="server" Text="Aqui va per codi si el nom i contrasenya son correctes"></asp:Label>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                        <asp:LinkButton ID="LinkButtonAcceptar" CssClass="btn btn-primary" runat="server" OnClick="LinkButtonAcceptar_Click">
                            <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Acceptar
                        </asp:LinkButton>
                    </div>
                </div>

            </div>
        </div>
    <!--FI MODAL-->
</asp:Content>
