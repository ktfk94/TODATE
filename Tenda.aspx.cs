using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Tenda : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        divMsg.Visible = false;
        divError.Visible = false;
    }

    protected void mostrarMsg()
    {
        divMsg.Visible = true;
    }
    protected void restarTokens(int resta)
    {
        int tokensActuals = Int32.Parse(Tokens.InnerText);
        tokensActuals -= resta;
        if (tokensActuals >= 0)
        {            
            Tokens.InnerText = tokensActuals.ToString();
            mostrarMsg();
        }
        else
        {
            divError.Visible = true;
        }
        
    }

    protected void ButtonProducte1_Click(object sender, EventArgs e)
    {
        //Canviar temps pròxim contacte -> 6
        //Restar x tokens
        restarTokens(1);
    }

    protected void ButtonProducte2_Click(object sender, EventArgs e)
    {
        //Comprovar si és gratis
        //Afegir nou contacte
        //Restar x tokens
        restarTokens(4);
    }

    protected void ButtonProducte3_Click(object sender, EventArgs e)
    {
        //Canviar temps dels pròxims 3 contactes -> 5
        //Restar x tokens
        restarTokens(5);
    }

    protected void ButtonProducte4_Click(object sender, EventArgs e)
    {
        //Canviar temps de tots els contactes -> 7
        //Restar x tokens
        restarTokens(8);
    }
}