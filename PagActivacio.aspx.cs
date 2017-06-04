using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class PagActivacio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            //Recollim el codi d'activació de la url (ActivationCode=)
            string activationCode = !string.IsNullOrEmpty(Request.QueryString["ActivationCode"]) ? Request.QueryString["ActivationCode"] : Guid.Empty.ToString();

            //Consulta a mongo per rebre el codi de confirmació
            string consultaCodi = "";

            if (activationCode.Equals(consultaCodi))
            {
                ltMessage.Text = "Activation successful.";
            }
            else{
                ltMessage.Text = "Invalid Activation code.";
            }

        }
    }
}