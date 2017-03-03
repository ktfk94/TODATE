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
        HtmlGenericControl nouDiv = new HtmlGenericControl("DIV");
        nouDiv.Attributes.Add("class","row table-bordered");

        HtmlGenericControl divImg = new HtmlGenericControl("DIV");
        divImg.Attributes.Add("class", "col-md-2");
        HtmlGenericControl img = new HtmlGenericControl("IMG");
        img.Attributes.Add("class", "img-rounded img-responsive imatgeXats");
        img.Attributes.Add("src","./Imatges/fons.jpg");
        divImg.Controls.Add(img);
        nouDiv.Controls.Add(divImg);

        HtmlGenericControl divText = new HtmlGenericControl("DIV");
        divText.Attributes.Add("class", "col-md-9");
        HtmlGenericControl h3 = new HtmlGenericControl("H3");
        h3.InnerHtml = "Nom de la persona";
        HtmlGenericControl text = new HtmlGenericControl("ASP:LABEL");
        text.Attributes.Add("class", "control-label");
        text.InnerHtml = "Missatge més recent de la persona";
        divText.Controls.Add(h3);
        divText.Controls.Add(text);
        nouDiv.Controls.Add(divText);

        HtmlGenericControl divHora = new HtmlGenericControl("DIV");
        divHora.Attributes.Add("class", "col-md-1");
        HtmlGenericControl hora = new HtmlGenericControl("ASP:LABEL");
        hora.InnerHtml = "12:09";
        nouDiv.Controls.Add(hora);

        espaiXats.Controls.Add(nouDiv);
    }
}