using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PaginaPerfil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*string LabelCorreuMestre = Session["mail"] as String;
        Usuari user = new Usuari();

        user = FMong.SelectUser(LabelCorreuMestre);
        ImgPerfil.Src = "data:image/png;base64," + Convert.ToBase64String(user.img);
        LabelNom.Text = user.name;
        LabelCorreu.Text = user.mail;
        LabelData.Text = Convert.ToString(DateTime.Now);
        LabelEdat.Text = Encrypt.Desencriptar(user.birthdate.ToString());

        LabelColor.Text = user.colour;
        LabelFigura.Text = user.shape;
        LabelCabell.Text = user.typeOfHair;
        LabelCivil.Text = user.civilstatus;

        String[] esports = user.sports;
        String[] gustos = user.tastes;
        String[] IVs = user.iv;

        ScriptManager.RegisterStartupScript(this, typeof(Page), "lel", "$(document).ready(function(){});", true);*/
    }

    protected void ButtonCanviarDades_Click(object sender, EventArgs e)
    {
        Response.Redirect("PerfilModificarDades.aspx");
    }
}