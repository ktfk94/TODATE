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

    }

    protected void LinkButtonAfegirEsport_Click(object sender, EventArgs e)
    {
        HtmlGenericControl nouLi = new HtmlGenericControl("li");
        nouLi.Attributes.Add("class", "list-group-item");

        HtmlGenericControl nouText = new HtmlGenericControl("asp:TextBox");
        nouText.InnerHtml = TextBoxAfegirEsport.Text;

        HtmlGenericControl nouButo = new HtmlGenericControl("asp:LinkButton");
        nouButo.InnerHtml = "<span aria-hidden='true' class='glyphicon glyphicon-remove'></span>";

        nouLi.Controls.Add(nouText);
        nouLi.Controls.Add(nouButo);
        
        LlistatEsports.Controls.Add(nouLi);
    }
}