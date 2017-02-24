using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PaginaPrincipal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButtonAcceptar_Click(object sender, EventArgs e)
    {
        string pw = "";
        pw =  TextBoxDadesContra.Text;
        string compro = Encrypt.Encriptar(pw, "hola");

        bool comp =  FMong.preUploadSelect(TextBoxDadesNom.Text);
        if (comp)
        {
            LinkButtonAcceptar.Text = compro;
        }
        
    }
}