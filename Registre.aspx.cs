using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registre : System.Web.UI.Page
{
    static int qui = 0;
    static int que = 0;
    static int contPanel = 0;
    static string tipo = "";
    static string guid = Guid.NewGuid().ToString();
    static Usuari user = new Usuari();
    string pwEncrypt = "";
    protected void amagarPanels()
    {
        PanelBarraProgres.Visible = false;
        PanelMissatges.Visible = false;
        PanelInici.Visible = false;
        PanelBenvinguda.Visible = false;
        PanelDadesNecessaries.Visible = false;
        PanelDadesPersonals.Visible = false;
        PanelOpcionsRelacio.Visible = false;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.UrlReferrer == null)
        {
            Response.Redirect("Home.aspx");
        }
        if (!IsPostBack)
        {
            
            amagarPanels();
            PanelInici.Visible = true;
            LinkButtonEnrrere.Visible = false;
            contPanel = 0;
            OmplirAny();
            omplirDataRegistre(31, false);
            omplirEdatBuscar();

        }
    }

    protected void ButtonPujar_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string extension = Path.GetExtension(FileUpload1.FileName);
            if (extension == ".jpg" || extension == ".png")
            {

                Stream img = FileUpload1.FileContent;
                byte[] m_Bytes = UtilSignUp.ReadToEnd(img);
                user.img = m_Bytes;
                string path = Server.MapPath("ImatgesPujades\\");

                String imageName = guid + FileUpload1.FileName;

                FileUpload1.SaveAs(path + imageName);
                //mostrarProves.Text = path;
                ImagePerfil.ImageUrl = "~/ImatgesPujades/" + imageName;
            }
        }
        else
        {

        }
    }

    protected void seleccionarPanel(int numPanel)
    {
        switch (numPanel)
        {
            case 0:
                PanelInici.Visible = true;
                PanelBenvinguda.Visible = false;
                PanelDadesNecessaries.Visible = false;
                PanelDadesPersonals.Visible = false;
                PanelOpcionsRelacio.Visible = false;
                break;
            case 1:
                user.pw = Encrypt.Encriptar(TextBoxContra.Text);
                PanelInici.Visible = false;
                PanelBenvinguda.Visible = true;
                PanelDadesNecessaries.Visible = false;
                PanelDadesPersonals.Visible = false;
                PanelOpcionsRelacio.Visible = false;
                break;
            case 2:
                PanelInici.Visible = false;
                PanelBenvinguda.Visible = false;
                PanelDadesNecessaries.Visible = true;
                PanelDadesPersonals.Visible = false;
                PanelOpcionsRelacio.Visible = false;
                break;
            case 3:
                PanelInici.Visible = false;
                PanelBenvinguda.Visible = false;
                PanelDadesNecessaries.Visible = false;
                PanelDadesPersonals.Visible = true;
                PanelOpcionsRelacio.Visible = false;
                break;
            case 4:
                PanelInici.Visible = false;
                PanelBenvinguda.Visible = false;
                PanelDadesNecessaries.Visible = false;
                PanelDadesPersonals.Visible = false;
                PanelOpcionsRelacio.Visible = true;
                break;
            case 5:
                InsertReg();
                break;
            default:
                break;
        }
    }

    protected string SeleccioSexe()
    {
        String sex = "";
        if (RadioButtonSocHome.Checked)
        {
            sex = "Man";
            return sex;
        }
        if (RadioButtonSocDona.Checked)
        {
            sex = "Woman";
            return sex;
        }
        if (RadioButtonSocNeutre.Checked)
        {
            sex = "Neutral";
            return sex;
        }
        return sex;
    }

    protected string SeleccioSexeBuscat()
    {
        String sex = "";
        if (RadioButtonBuscoHome.Checked)
        {
            sex = "Man";
            return sex;
        }
        if (RadioButtonBuscoDona.Checked)
        {
            sex = "Woman";
            return sex;
        }
        if (RadioButtonBuscoNeutre.Checked)
        {
            sex = "Neutral";
            return sex;
        }
        return sex;
    }

    protected string SeleccioFills()
    {
        string children = "";

        if (RadiobuttonFillsSi.Checked)
        {
            children = "Si";
            return children;
        }
        if (RadiobuttonFillsNo.Checked)
        {
            children = "No";
            return children;
        }
        else
        {
            children = "";
            return children;
        }
    }

    protected string getBirthDate()
    {
        string date = DropDia.SelectedItem.Text + "/" + DropMes.SelectedItem.Text + "/" + DropAny.SelectedItem.Text;
        return date;
    }

    protected void LinkButtonContinuar_Click(object sender, EventArgs e)
    {
        if (TextBoxContra.Text.Length < 5 && contPanel==0 )
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "La contrasenya ha de contenir 5 caràcters com a mínim!" + "');", true);
        }
        else if (contPanel == 2 && ((DateTime.Today.Year - 18) < Int32.Parse(DropAny.SelectedValue)))
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Tens menys de 18 anys!" + "');", true);
        }
        else
        {
            contPanel++;
            seleccionarPanel(contPanel);
            comprovarEnrrere();
        }
    }

    protected void comprovarEnrrere()
    {
        if (contPanel == 0)
        {
            LinkButtonEnrrere.Visible = false;
        }
        else
        {
            LinkButtonEnrrere.Visible = true;
        }
    }

    protected void InsertReg()
    {
        /*tipo = "Insert";
        

        user.name = TextBoxCognoms.Text + ", " + TextBoxNom.Text;
        user.iv = Utils.selectedIndexesOfCheckBoxList(CheckboxlistIV);
        user.mail = TextBoxCorreu.Text;
        user.religion = "";
        user.children = SeleccioFills();
        user.sex = SeleccioSexe();
        user.sexWanted = SeleccioSexeBuscat();
        user.shape = TextBoxFigura.Text;
        //user.sports[0] = TextBoxEsports.Text;
        user.tastes = Utils.selectedIndexesOfCheckBoxList(CheckListGustos);
        user.typeOfHair = TextBoxCabell.Text;
        user.ubication = "Falta omplir";
        user.colour = DropdownlistColor.SelectedItem.Text;
        user.civilstatus = TextBoxCivil.Text;
        user.birthplace = TextBoxOrigen.Text;
        user.birthdate = Encrypt.Encriptar(getBirthDate());

        Busca busca = new Busca();

        busca.colour = DropdownlistBuscarColor.Text;
        busca.edat = Convert.ToInt32(DropdownlistEdatMax.Text) - Convert.ToInt32(DropdownlistEdatMin.Text);
        busca.civilstatus = DropdownlistBuscarCivil.Text;
        busca.iv = Utils.selectedIndexesOfCheckBoxList(CheckboxlistBuscarIV);
        busca.sports = DropdownlistBuscarEsports.Text;
        busca.tastes = Utils.selectedIndexesOfCheckBoxList(CheckboxlistBuscarGustos);
        busca.typeOfHair = DropdownlistBuscarCabell.Text;
        busca.shape = DropdownlistBuscarFigura.Text;
        busca.sex = SeleccioSexeBuscat();
        */
        //Enviar correu de verificació i rebre el codi
        String activationCode = enviarMailConf();
        //user.activatedAccount = false;
        //user.activationCode = activationCode;
        //FMong.preUpload(user, busca);

        //Response.Redirect("PagPrincipalIniciat.aspx");
    }

    protected void LinkButtonEnrrere_Click(object sender, EventArgs e)
    {
        contPanel--;
        seleccionarPanel(contPanel);
        comprovarEnrrere();
    }



    protected void omplirDataRegistre( int days, bool feb)
    {

        if (DateTime.IsLeapYear(Int32.Parse(DropAny.SelectedItem.Text)) && feb)
        {
            for (int cont = 1; cont <= 29; cont++)
            {
                DropDia.Items.Add(cont.ToString());
            }
        }
        else
        {
            for (int cont = 1; cont <= days; cont++)
            {
                DropDia.Items.Add(cont.ToString());
            }
        }
    }

    protected void OmplirAny()
    {
        int anyActual = DateTime.Now.Year;
        for (int cont = anyActual; cont > anyActual - 100; cont--)
        {
            DropAny.Items.Add(cont.ToString());
        }
    }

    protected void DropMes_SelectedIndexChanged(object sender, EventArgs e)
    {
        int days =31;
        bool feb = false;

        if (DropMes.SelectedIndex == 0 || DropMes.SelectedIndex == 2 
            || DropMes.SelectedIndex == 4 || DropMes.SelectedIndex == 6 
            || DropMes.SelectedIndex == 7 || DropMes.SelectedIndex == 9 
            || DropMes.SelectedIndex == 11)
        {
            days = 31;
            feb = false;
        }
        if (DropMes.SelectedIndex == 3 || DropMes.SelectedIndex == 5 
            || DropMes.SelectedIndex == 8 || DropMes.SelectedIndex == 10)
        {
            days = 30;
            feb = false;
        }

        if (DropMes.SelectedIndex == 1)
        {
            days = 28;
            feb = true;
        }
        omplirDataRegistre(days, feb);
        
    }
    protected void omplirEdatBuscar()
    {
        DropdownlistEdatMin.Items.Clear();

        DropdownlistEdatMax.Items.Clear();
        DropdownlistEdatMax.Items.Add("-");

        int numInici = 18;
        int numFi = 100;
        for(int cont = numInici; cont < numFi; cont++)
        {
            DropdownlistEdatMin.Items.Add(cont.ToString());
            DropdownlistEdatMax.Items.Add(cont.ToString());
        }
    }

    protected void LinkButtonAcceptar_Click(object sender, EventArgs e)
    {
       if(FMong.preSelect(TextBoxDadesNom.Text, TextBoxDadesContra.Text))
        {
            //codi per anar a la seguent pagina
        }
        else
        {
            LabelError.Visible = true;
        }
        
    }
    protected void ButtonAfegirGust_Click(object sender, EventArgs e)
    {
        ListItem item = new ListItem();
        item.Text = TextBoxAfegirGust.Text;

        if(item.Text!=null && item.Text != "") {
            CheckListGustos.Items.Add(item);
        }
        

        TextBoxAfegirGust.Text = "";
    }

    protected void ButtonIV_Click(object sender, EventArgs e)
    {
        ListItem item = new ListItem();
        item.Text = TextBoxIV.Text;

        if (item.Text != null && item.Text != "")
        {
            CheckboxlistIV.Items.Add(item);
        }

        TextBoxIV.Text = "";
    }

    protected void ButtonBuscarGustos_Click(object sender, EventArgs e)
    {
        ListItem item = new ListItem();
        item.Text = TextBoxBuscarGustos.Text;

        if (item.Text != null && item.Text != "")
        {
            CheckboxlistBuscarGustos.Items.Add(item);
        }


        TextBoxBuscarGustos.Text = "";
    }

    protected void ButtonBuscarIV_Click(object sender, EventArgs e)
    {
        ListItem item = new ListItem();
        item.Text = TextBoxBuscarIV.Text;

        if (item.Text != null && item.Text != "")
        {
            CheckboxlistBuscarIV.Items.Add(item);
        }

        TextBoxBuscarIV.Text = "";
    }

    protected String enviarMailConf()
    {
        String txtUsername = "Uri94";
        String txtEmail = "ktfk94@gmail.com";
        //Crear el codi d'activació
        string activationCode = Guid.NewGuid().ToString();;

        //Crear el mail d'activació
        using (MailMessage mm = new MailMessage("projectetodate@gmail.com", txtEmail))
        {
            mm.Subject = "Activació del compte";
            string body = "Hola " + txtUsername + ",";
            body += "<br /><br />Siusplau, fes clic al següent link perr activar el teu compte de Todate";
            body += "<br />Fes clic<a href = '" + Request.Url.AbsoluteUri.Replace("Registre.aspx", "PagActivacio.aspx?ActivationCode=" + activationCode) + "'> AQUI </a>per activar el teu compte.";
            body += "<br /><br />Gràcies";
            mm.Body = body;
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential("projectetodate@gmail.com", "TodateInformatica");
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);
        }
        //ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + "S'ha enviat un mail de confirmació al teu correu!" + "');", true);
        return activationCode;
    }
}
