using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class PerfilModificarDades : System.Web.UI.Page
{    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack) // to avoid reloading your control on postback
        {
            string LabelCorreuMestre = Session["mail"] as String;
            Usuari user = new Usuari();

            user = FMong.SelectUser(LabelCorreuMestre);

            ImgPerfil.Src = "data:image/png;base64," + Convert.ToBase64String(user.img);
            TextBoxNom.Text = user.name;
            TextBoxCorreu.Text = user.mail;
            TextBoxData.Text = Convert.ToString(DateTime.Now);
            TextBoxEdat.Text = Encrypt.Desencriptar(user.birthdate.ToString());
            TextBoxColor.Text = user.colour;
            TextBoxFigura.Text = user.shape;
            TextBoxCabell.Text = user.typeOfHair;
            TextBoxCivil.Text = user.civilstatus;
        }
       
        //TextBoxFumador.Text = user.
    }

    protected void ButtonCanviarDades_Click(object sender, EventArgs e)
    {
        Usuari user = new Usuari();
        user.mail = Session["mail"] as String;
        user.name = TextBoxNom.Text;
        user.colour = TextBoxColor.Text;
        user.shape = TextBoxFigura.Text;
        user.typeOfHair = TextBoxCabell.Text;
        user.civilstatus = TextBoxCivil.Text;
        FMong.preUpload(user, "Update");

        Response.Redirect("PaginaPerfil.aspx");
    }
}