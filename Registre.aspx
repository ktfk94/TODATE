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
            <asp:label id="LabelQuiQueTitol" cssclass="control-label" runat="server" text="Quí soc i què busco?"></asp:label>
        </div>
        <div class="panel-body">
            <div class="form-group" id="quiQue">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-5">
                            <h4>Qui soc?</h4>
                            <div class="row">
                                <div class="col-md-4">
                                    <asp:image id="ImageSocHome" cssclass="imgRegistre"  runat="server" imageurl="~/Imatges/simbol_home.png" ToolTip="Soc home"></asp:image>
                                    <asp:radiobutton id="RadioButtonSocHome" runat="server" GroupName="Soc"></asp:radiobutton>
                                </div>
                                <div class="col-md-4">
                                    <asp:image id="ImageSocDona" cssclass="imgRegistre"  runat="server" imageurl="~/Imatges/simbol_dona.png" ToolTip="Soc dona"></asp:image>
                                    <asp:radiobutton id="RadioButtonSocDona" runat="server" GroupName="Soc"></asp:radiobutton>
                                </div>
                                <div class="col-md-4">
                                    <asp:image id="ImageSocNeutre" cssclass="imgRegistre"  runat="server" imageurl="~/Imatges/simbolNeutre.jpg" ToolTip="Indefinit"></asp:image>
                                    <asp:radiobutton id="RadioButtonSocNeutre" runat="server" GroupName="Soc"></asp:radiobutton>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7">
                            <h4>Què busco?</h4>
                            <div class="row">
                                <div class="col-md-3">
                                    <asp:image id="ImageBuscoHome" cssclass="imgRegistre"  runat="server" imageurl="~/Imatges/simbol_home.png" ToolTip="Busco home"></asp:image>
                                    <asp:radiobutton id="RadioButtonBuscoHome" runat="server" GroupName="Busco"></asp:radiobutton>
                                </div>
                                <div class="col-md-3">
                                    <asp:image id="ImageBuscoDona" cssclass="imgRegistre"  runat="server" imageurl="~/Imatges/simbol_dona.png" ToolTip="Busco dona"></asp:image>
                                    <asp:radiobutton id="RadioButtonBuscoDona" runat="server" GroupName="Busco"></asp:radiobutton>
                                </div>
                                <div class="col-md-3">
                                    <asp:image id="ImageBuscoDoble" cssclass="imgRegistre"  runat="server" imageurl="~/Imatges/simbolDoble.png" ToolTip="Busco ambdós"></asp:image>
                                    <asp:radiobutton id="RadioButtonBuscoDoble" runat="server" GroupName="Busco"></asp:radiobutton>
                                </div>
                                <div class="col-md-3">
                                    <asp:image id="ImageBuscoNeutre" cssclass="imgRegistre"  runat="server" imageurl="~/Imatges/simbolNeutre.jpg" ToolTip="Busco indefinit"></asp:image>
                                    <asp:radiobutton id="RadioButtonBuscoNeutre" runat="server" GroupName="Busco"></asp:radiobutton>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group" id="correu">
                <asp:label id="LabelCorreu" cssclass="col-sm-2 control-label" runat="server" text="Correu electrònic"></asp:label>
                <div class="col-sm-10">
                    <asp:textbox id="TextBoxCorreu" cssclass="form-control" runat="server" textmode="Email"></asp:textbox>
                    <asp:requiredfieldvalidator id="RequiredFieldValidatorCorreu" cssclass="alert-danger label-danger label" runat="server"
                        errormessage="El correu és necessari!" controltovalidate="TextBoxCorreu" display="Dynamic"></asp:requiredfieldvalidator>
                </div>
            </div>
            <div class="form-group" id="contra">
                <asp:label id="LabelContra" cssclass="col-sm-2 control-label" runat="server" text="Contrasenya"></asp:label>
                <div class="col-sm-10">
                    <asp:textbox id="TextBoxContra" cssclass="form-control" runat="server" textmode="Password"></asp:textbox>
                    <asp:requiredfieldvalidator id="RequiredFieldValidatorContra" cssclass="alert-danger label-danger label" runat="server"
                        errormessage="La contrasenya és necessaria!" controltovalidate="TextBoxContra" display="Dynamic"></asp:requiredfieldvalidator>
                </div>
            </div>
            <div class="form-group" id="conf">
                <asp:label id="LabelConf" cssclass="col-sm-2 control-label" runat="server" text="Confirmar la contrasenya"></asp:label>
                <div class="col-sm-10">
                    <asp:textbox id="TextBoxConf" cssclass="form-control" runat="server" textmode="Password"></asp:textbox>
                    <asp:requiredfieldvalidator id="RequiredFieldValidatorConf" cssclass="alert-danger label-danger label" runat="server"
                        errormessage="La confirmació de la contrasenya és necessaria!" controltovalidate="TextBoxConf" display="Dynamic"></asp:requiredfieldvalidator>
                    <asp:comparevalidator id="CompareValidatorConf" runat="server" errormessage="Les contrasenyes no són iguals!" display="Dynamic"
                        controltocompare="TextBoxContra" controltovalidate="TextBoxConf"></asp:comparevalidator>
                </div>
            </div>
        </div>
    </div>

    <div class="panel panel-primary" id="PanelBenvinguda" runat="server">
        <div class="panel-heading">
            <asp:label id="LabelBenvinguda" cssclass="control-label" runat="server" text="Estem molt contents que hagis escollit Todate!"></asp:label>
        </div>
        <div class="panel-body">
            <div class="form-group">
                <asp:label id="LabelInfo" runat="server" cssclass="col-sm-offset-1 col-sm-9 control-label text-center"
                    text="Volem saber més coses sobre tu per a poder crear un perfil complet. Primer de tot, necessitarem una fotografía teva que servirà com a fotografía
                     de perfil. La pots canviar en qualsevol moment des del perfil. Si vols en pots introduïr més d'una."></asp:label>
                <!-- COM POSAR UNA FOTUUUUUUUU -->
                <asp:image id="ImagePerfil" cssclass="pujarImgPerfil" runat="server" />
            </div>
            <div class="form-group" id="fotu">
                <asp:fileupload id="FileUpload1" runat="server" allowmultiple="False" />
                <asp:button id="ButtonPujar" runat="server" text="Pujar" onclick="ButtonPujar_Click" />
            </div>
        </div>
    </div>

    <div class="panel panel-primary" id="PanelDadesNecessaries" runat="server">
        <div class="panel-heading">
            <asp:label id="LabelNecessariesTitol" cssclass="control-label" runat="server" text="Dades necessaries"></asp:label>
        </div>
        <div class="panel-body">
            <div class="form-group">
                <asp:label id="LabelNom" cssclass="col-sm-2 control-label" runat="server" text="Nom"></asp:label>
                <div class="col-sm-10">
                    <asp:textbox id="TextBoxNom" cssclass="form-control" runat="server"></asp:textbox>
                    <asp:requiredfieldvalidator id="RequiredFieldValidatorNom" cssclass="alert-danger label-danger label" runat="server"
                        errormessage="El nom és necessari!" controltovalidate="TextBoxNom" display="Dynamic"></asp:requiredfieldvalidator>
                </div>
            </div>
            <div class="form-group">
                <asp:label id="LabelCognoms" cssclass="col-sm-2 control-label" runat="server" text="Cognoms"></asp:label>
                <div class="col-sm-10">
                    <asp:textbox id="TextBoxCognoms" cssclass="form-control" runat="server"></asp:textbox>
                    <asp:requiredfieldvalidator id="RequiredFieldValidatorCognoms" cssclass="alert-danger label-danger label" runat="server"
                        errormessage="Els cognoms són necessaris!" controltovalidate="TextBoxCognoms" display="Dynamic"></asp:requiredfieldvalidator>
                </div>
            </div>
            <div class="form-group" id="dataNaix">
                <asp:label id="LabelDataNaix" cssclass="col-sm-2 control-label" runat="server" text="Data de naixement"></asp:label>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-2">
                            <asp:label id="LabelDia" cssclass="control-label" runat="server" text="Dia"></asp:label>
                            <asp:dropdownlist id="DropDia" cssclass="dropdown" runat="server">
                            </asp:dropdownlist>
                        </div>
                        <div class="col-md-2">
                            <asp:label id="LabelMes" cssclass="control-label" runat="server" text="Mes"></asp:label>
                            <asp:dropdownlist id="DropMes" cssclass="dropdown" runat="server">
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
                            </asp:dropdownlist>
                        </div>
                        <div class="col-md-2">
                            <asp:label id="LabelAny" cssclass="control-label" runat="server" text="Any"></asp:label>
                            <asp:dropdownlist id="DropAny" cssclass="dropdown" runat="server">
                            </asp:dropdownlist>
                        </div>
                    </div>
                </div>
            </div>
            <!-- RECOLLIR UBICACIÓ AUTOMÀTICAMENT -->
        </div>
    </div>

    <div class="panel panel-primary" id="PanelDadesPersonals" runat="server">
        <div class="panel-heading">
            <asp:label id="LabelDadesPersonals" cssclass="control-label" runat="server" text="Dades personals"></asp:label>
        </div>
        <div class="panel-body">
            <div class="form-group">
                <asp:label id="LabelColor" cssclass="col-sm-2 control-label" runat="server" text="Color preferit"></asp:label>
                <asp:dropdownlist id="DropdownlistColor" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>Blanc</asp:ListItem>
                    <asp:ListItem>Negre</asp:ListItem>
                    <asp:ListItem>Vermell</asp:ListItem>
                    <asp:ListItem>Groc</asp:ListItem>
                    <asp:ListItem>Blau</asp:ListItem>
                    <asp:ListItem>Taronja</asp:ListItem>
                    <asp:ListItem>Verd</asp:ListItem>
                    <asp:ListItem>Rosa</asp:ListItem>
                </asp:dropdownlist>
            </div>
            <div class="form-group">
                <asp:label id="LabelCabell" cssclass="col-sm-2 control-label" runat="server" text="Tipus de cabell"></asp:label>
                <asp:dropdownlist id="DropdownlistCabell" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>Llis</asp:ListItem>
                    <asp:ListItem>Ondulat</asp:ListItem>
                    <asp:ListItem>Arrissat</asp:ListItem>
                </asp:dropdownlist>
            </div>
            <div class="form-group">
                <asp:label id="LabelFigura" cssclass="col-sm-2 control-label" runat="server" text="Figura"></asp:label>
                <asp:dropdownlist id="DropdownlistFigura" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>Esvelta</asp:ListItem>
                    <asp:ListItem>Corpulenta</asp:ListItem>

                </asp:dropdownlist>
            </div>
            <div class="form-group">
                <asp:label id="LabelGustos" cssclass="col-sm-2 control-label" runat="server" text="Gustos"></asp:label>
                <asp:checkboxlist id="CheckListGustos" runat="server" CellPadding="1" CellSpacing="1" RepeatColumns="9" BorderStyle="Solid" BorderWidth="1px">
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
                </asp:checkboxlist>
            </div>
            <div class="form-group">
                <asp:label id="LabelEsports" cssclass="col-sm-2 control-label" runat="server" text="Esports"></asp:label>
                <asp:dropdownlist id="DropdownlistEsports" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>No faig esport</asp:ListItem>
                    <asp:ListItem>Bàsquet</asp:ListItem>
                    <asp:ListItem>Fútbol</asp:ListItem>
                    <asp:ListItem>Tennis</asp:ListItem>
                    <asp:ListItem>Natació</asp:ListItem>
                    <asp:ListItem>Golf</asp:ListItem>
                    <asp:ListItem>Handbol</asp:ListItem>
                </asp:dropdownlist>
            </div>
            <div class="form-group">
                <asp:label id="LabelOrigen" cssclass="col-sm-2 control-label" runat="server" text="Origen"></asp:label>
                <asp:dropdownlist id="DropdownlistOrigen" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                </asp:dropdownlist>
            </div>
            <div class="form-group">
                <asp:label id="LabelReligio" cssclass="col-sm-2 control-label" runat="server" text="Religió"></asp:label>
                <asp:dropdownlist id="DropdownlistReligió" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>No creient</asp:ListItem>
                    <asp:ListItem>Catòlic</asp:ListItem>
                    <asp:ListItem>Budisme</asp:ListItem>
                    <asp:ListItem>Musulmà</asp:ListItem>
                </asp:dropdownlist>
            </div>
            <div class="form-group">
                <asp:label id="LabelCivil" cssclass="col-sm-2 control-label" runat="server" text="Estat civil"></asp:label>
                <asp:dropdownlist id="DropdownlistCivil" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>Solter/a</asp:ListItem>
                </asp:dropdownlist>
            </div>
            <div class="form-group">
                <asp:label id="LabelFills" cssclass="col-sm-2 control-label" runat="server" text="Tens fills?"></asp:label>
                <asp:radiobutton id="RadiobuttonFillsSi" runat="server" GroupName="fills" Text="Si"></asp:radiobutton>
                <asp:radiobutton id="RadiobuttonFillsNo" runat="server" GroupName="fills" Text="No"></asp:radiobutton>
            </div>
            <div class="form-group">
                <asp:label id="LabelFumar" cssclass="col-sm-2 control-label" runat="server" text="Ets fumador?"></asp:label>
                <asp:radiobutton id="RadioFumarSi" runat="server" GroupName="SocFumador" Text="Si"></asp:radiobutton>
                <asp:radiobutton id="RadioFumarNo" runat="server" GroupName="SocFumador" Text="No"></asp:radiobutton>
            </div>
            <div class="form-group">
                <asp:label id="LabelIV" cssclass="col-sm-2 control-label" runat="server" text="Imperfeccions i virtuts"></asp:label>
                <asp:checkboxlist id="CheckboxlistIV" runat="server" CellPadding="1" CellSpacing="1" RepeatColumns="9" BorderStyle="Solid" BorderWidth="1px">
                    <asp:ListItem>Alegre</asp:ListItem>
                    <asp:ListItem>Enèrgic</asp:ListItem>
                    <asp:ListItem>Romàntic</asp:ListItem>
                    <asp:ListItem>Capsigrany</asp:ListItem>
                </asp:checkboxlist>
            </div>
        </div>
    </div>

    <div class="panel panel-primary" id="PanelOpcionsRelacio" runat="server">
        <div class="panel-heading">
            <asp:label id="LabelRel" cssclass="control-label" runat="server" text="Com vols que sigui la persona que busques?"></asp:label>
        </div>
        <div class="panel-body">
            <div class="form-group">
                <asp:label id="LabelTipusRel" cssclass="col-sm-2 control-label" runat="server" text="Tipus de relació"></asp:label>
                <asp:dropdownlist id="DropdownlistRelació" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>Buscar parella</asp:ListItem>
                    <asp:ListItem>Aventura</asp:ListItem>
                </asp:dropdownlist>
            </div>
            <div class="form-group">
                <asp:label id="LabelBuscarEdat" cssclass="col-sm-2 control-label" runat="server" text="Quina edat aproximada busques en una relació?"></asp:label>
                <asp:label id="LabelMin" runat="server" text="Min"></asp:label>
                <asp:dropdownlist id="DropdownlistEdatMin" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                </asp:dropdownlist>
                <asp:label id="LabelMax" runat="server" text="Max"></asp:label>
                <asp:dropdownlist id="DropdownlistEdatMax" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>100s</asp:ListItem>
                </asp:dropdownlist>
            </div>
            <div class="form-group-pers">
                <asp:label id="LabelBuscarColor" cssclass="col-sm-2 control-label" runat="server" text="Color preferit"></asp:label>
                <asp:dropdownlist id="DropdownlistBuscarColor" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>Blanc</asp:ListItem>
                    <asp:ListItem>Negre</asp:ListItem>
                </asp:dropdownlist>
            </div>
            <div class="form-group">
                <asp:label id="LabelBuscarCabell" cssclass="col-sm-2 control-label" runat="server" text="Tipus de cabell"></asp:label>
                <asp:dropdownlist id="DropdownlistBuscarCabell" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>Llis</asp:ListItem>
                    <asp:ListItem>Ondulat</asp:ListItem>
                </asp:dropdownlist>
            </div>
            <div class="form-group">
                <asp:label id="LabelBuscarFigura" cssclass="col-sm-2 control-label" runat="server" text="Figura"></asp:label>
                <asp:dropdownlist id="DropdownlistBuscarFigura" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>Esvelta</asp:ListItem>
                    <asp:ListItem>Potent</asp:ListItem>
                </asp:dropdownlist>
            </div>
            <div class="form-group">
                <asp:label id="LabelBuscarCivil" cssclass="col-sm-2 control-label" runat="server" text="Estat civil"></asp:label>
                <asp:dropdownlist id="DropdownlistBuscarCivil" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>Solter/a</asp:ListItem>
                </asp:dropdownlist>
            </div>
            <div class="form-group">
                <asp:label id="LabelBuscarFills" cssclass="col-sm-2 control-label" runat="server" text="Que tingui fills?"></asp:label>
                <asp:radiobutton id="RadiobuttonBuscarFillsSi" runat="server" GroupName="BuscoFills" Text="Si"></asp:radiobutton>
                <asp:radiobutton id="RadiobuttonBuscarFillsNo" runat="server" GroupName="BuscoFills" Text="No"></asp:radiobutton>
            </div>
            <div class="form-group">
                <asp:label id="LabelFumador" cssclass="col-sm-2 control-label" runat="server" text="Que sigui fumador?"></asp:label>
                <asp:radiobutton id="RadiobuttonBuscoFumarSi" runat="server" GroupName="BuscoFumador" Text="Si"></asp:radiobutton>
                <asp:radiobutton id="RadiobuttonBuscoFumarNo" runat="server" GroupName="BuscoFumador" Text="No"></asp:radiobutton>
            </div>
            <div class="form-group">
                <asp:label id="LabelBuscarEsports" cssclass="col-sm-2 control-label" runat="server" text="Quin esport vols que faci?"></asp:label>
                <asp:dropdownlist id="DropdownlistBuscarEsports" runat="server">
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>Que no faci esport</asp:ListItem>
                    <asp:ListItem>Bàsquet</asp:ListItem>
                    <asp:ListItem>Fútbol</asp:ListItem>
                    <asp:ListItem>Tennis</asp:ListItem>
                </asp:dropdownlist>
            </div>
            <div class="form-group">
                <asp:label id="LabelBuscarGustos" cssclass="col-sm-2 control-label" runat="server" text="Quins gustos vols que tingui?"></asp:label>
                <asp:checkboxlist id="CheckboxlistBuscarGustos" runat="server" CellPadding="1" CellSpacing="1" RepeatColumns="9" BorderStyle="Solid" BorderWidth="1px">
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
                </asp:checkboxlist>
            </div>
            <div class="form-group">
                <asp:label id="LabelBuscarIV" cssclass="col-sm-2 control-label" runat="server" text="Imperfeccions i virtuts?"></asp:label>
                <asp:checkboxlist id="CheckboxlistBuscarIV" runat="server" CellPadding="1" CellSpacing="1" RepeatColumns="9" BorderStyle="Solid" BorderWidth="1px">
                    <asp:ListItem>Alegre</asp:ListItem>
                    <asp:ListItem>Enèrgic</asp:ListItem>
                    <asp:ListItem>Romàntic</asp:ListItem>
                    <asp:ListItem>Capsigrany</asp:ListItem>
                </asp:checkboxlist>
            </div>
        </div>
    </div>

    <div class="panel panel-primary" id="BotoContinuar" runat="server">
        <div class="panel-body">
            <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6">
                            <asp:linkbutton id="LinkButtonEnrrere" runat="server" OnClick="LinkButtonEnrrere_Click" CausesValidation="False">Enrrere</asp:linkbutton>
                        </div>
                        <div class="col-md-6" id="butoContinuarRegistre">
                            <asp:Label ID="LabelFi" CssClass="label label-warning" runat="server" Text=""></asp:Label>
                            <asp:linkbutton id="LinkButtonContinuar"   runat="server" OnClick="LinkButtonContinuar_Click">Continuar</asp:linkbutton>
                        </div>
                    </div>
            </div>
        </div>
    </div>
</asp:Content>
