using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        //Button1.PostBackUrl = "Registre.aspx";
    }

    protected void LinkButtonAcceptar_Click(object sender, EventArgs e)
    {
        if (FMong.preUploadSelect(TextBoxDadesNom.Text,TextBoxDadesContra.Text))
        {
            Session["mail"] = TextBoxDadesNom.Text;
            
            Response.Redirect("PagPrincipalIniciat.aspx");
            
        }
        else
        {
            LabelError.Visible = true;
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);
        }
        
        
    }


}