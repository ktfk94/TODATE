using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PaginaPerfil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string LabelCorreuMestre = "pautonto";
        Usuari user = new Usuari();

        user = FMong.SelectUser(LabelCorreuMestre);
        LabelNom.Text = user.name;
        LabelCorreu.Text = user.mail;
        LabelData.Text = Convert.ToString(DateTime.Now);
        LabelEdat.Text = Encrypt.Desencriptar((user.birthdate.ToString()),"");
    }

    protected void ButtonCanviarDades_Click(object sender, EventArgs e)
    {
        Response.Redirect("PerfilModificarDades.aspx");
    }
}