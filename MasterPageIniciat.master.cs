using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPageIniciat : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Usuari user = new Usuari();
        user = FMong.SelectUser(Session["mail"] as string);

        ImageNavPerfil.Src = "data:image/png;base64," + Convert.ToBase64String(user.img);
        LabelNomUsuari.Text = user.name;
    }
}
