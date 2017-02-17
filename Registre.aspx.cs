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
    static string guid = Guid.NewGuid().ToString();
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
        //llegirFitxer();
        omplirDataRegistre();
        if (!IsPostBack)
        {
            amagarPanels();
            PanelInici.Visible = true;
            LinkButtonEnrrere.Visible = false;
            contPanel = 0;
        }
    }

    protected void ButtonPujar_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string extension = System.IO.Path.GetExtension(FileUpload1.FileName);
            if(extension == ".jpg" || extension == ".png")
            {
                string path = Server.MapPath("ImatgesPujades\\");

                String imageName = guid + FileUpload1.FileName;

                FileUpload1.SaveAs(path + imageName);
                //mostrarProves.Text = path;
                ImagePerfil.ImageUrl = "~/ImatgesPujades/"+imageName;
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

    protected void LinkButtonContinuar_Click(object sender, EventArgs e)
    {
        if (TextBoxContra.Text.Length < 5 && contPanel==0)
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
        if(contPanel == 0)
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
        Usuari user = new Usuari();

        user.name = TextBoxCognoms.Text + ", " +TextBoxNom.Text ;
        user.img = "";
        user.iv = "";
        user.mail = TextBoxCorreu.Text;
        user.pw = TextBoxContra.Text;
        user.religion = "";
        if (RadiobuttonBuscarFillsSi.Checked)
        {
            user.children = "Si";
        }
        else
        {
            user.children = "No";
        }

        user.sex = "Falta omplir";
        user.shape = DropdownlistBuscarFigura.SelectedItem.Text;
        user.sports = DropdownlistBuscarEsports.SelectedItem.Text;
        user.tastes = "Falta omplir";
        user.typeOfHair = DropdownlistCabell.SelectedItem.Text;
        user.ubication = "Falta omplir";
        user.colour = DropdownlistColor.SelectedItem.Text;
        user.civilstatus = DropdownlistCivil.SelectedItem.Text;
        user.birthplace = DropdownlistOrigen.SelectedItem.Text;
        user.birthdate = "";

        FMong.preUpload(user);
        LabelFi.Text = "Benvingut a TODATE";
    }

    protected void LinkButtonEnrrere_Click(object sender, EventArgs e)
    {
        contPanel--;
        seleccionarPanel(contPanel);
        comprovarEnrrere();
    }

    protected void llegirFitxer()
    {
        int counter = 0;
        string line;
        
        StreamReader file = new StreamReader(".\\Altres\\Documents\\gentilicios.txt");
        while ((line = file.ReadLine()) != null)
        {
            DropdownlistOrigen.Items.Add(line);
            counter++;
        }

        file.Close();
    }
    protected void omplirDataRegistre()
    {
        for(int cont = 1; cont <= 31; cont++)
        {
            DropDia.Items.Add(cont.ToString());
        }
        int anyActual = DateTime.Now.Year;
        for (int cont = anyActual; cont>anyActual-100;cont--)
        {
            DropAny.Items.Add(cont.ToString());
        }
    }
}