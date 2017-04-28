using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class PagPrincipalIniciat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ButtonProva_Click(object sender, EventArgs e)
    {
        String ruta = "./Imatges/fons.jpg";
        String nom = "Nom de la persona";
        String msg = "Missatge més recent de la persona";
        String hora = DateTime.Now.ToString();
       


        HtmlGenericControl nouDiv = Utils.afegirXat(ruta, nom, msg, hora);

        espaiXats.Controls.Add(nouDiv);
    }

    protected void TextBoxCercador_TextChanged(object sender, EventArgs e)
    {
        
    }
}