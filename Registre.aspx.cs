
using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
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
        if (!IsPostBack)
        {
            
            amagarPanels();
            PanelInici.Visible = true;
            LinkButtonEnrrere.Visible = false;
            contPanel = 0;
            OmplirAny();
            omplirDataRegistre(31, false);


        }
    }

    protected void ButtonPujar_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string extension = System.IO.Path.GetExtension(FileUpload1.FileName);
            if (extension == ".jpg" || extension == ".png")
            {
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
                user.pw = Encrypt.Encriptar(TextBoxContra.Text, pwEncrypt);
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
        tipo = "Insert";
        

        user.name = TextBoxCognoms.Text + ", " + TextBoxNom.Text;
        user.img = "";
        user.iv = Utils.selectedIndexesOfCheckBoxList(CheckboxlistIV);
        user.mail = TextBoxCorreu.Text;
        user.religion = "";
        user.children = SeleccioFills();
        user.sex = SeleccioSexe();
        user.sexWanted = SeleccioSexeBuscat();
        user.shape = TextBoxFigura.Text;
        user.sports = TextBoxEsports.Text;
        user.tastes = Utils.selectedIndexesOfCheckBoxList(CheckListGustos);
        user.typeOfHair = TextBoxCabell.Text;
        user.ubication = "Falta omplir";
        user.colour = DropdownlistColor.SelectedItem.Text;
        user.civilstatus = TextBoxCivil.Text;
        user.birthplace = TextBoxOrigen.Text;
        user.birthdate = getBirthDate();

        FMong.preUpload(user, tipo);
        LabelFi.Text = "Benvingut a TODATE";
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

    protected void LinkButtonAcceptar_Click(object sender, EventArgs e)
    {
       if(FMong.preUploadSelect(TextBoxDadesNom.Text, TextBoxDadesContra.Text))
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
}
