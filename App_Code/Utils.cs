using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for Utils
/// </summary>
public class Utils
{
    public Utils()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    static public string[] selectedIndexesOfCheckBoxList(CheckBoxList chkList)
    {
        List<string> selectedIndexes = new List<string>();

        foreach (ListItem item in chkList.Items)
        {
            if (item.Selected)
            {
                selectedIndexes.Add(item.Value);
            }
        }

        return selectedIndexes.ToArray();
    }


    static protected void llegirFitxer()
    {
        String[] genti = new String[194];
        ArrayList gentis = new ArrayList();
        try
        {   // Open the text file using a stream reader.
            using (StreamReader sr = new StreamReader("Altres/Documents/gentilicios.txt"))
            {
                // Read the stream to a string, and write the string to the console.
                String line = sr.ReadLine();
                gentis.Add(line);
            }
        }
        catch (Exception e)
        {
            Console.WriteLine("The file could not be read:");
            Console.WriteLine(e.Message);
        }
    }

    static public string formArray(string[] list)
    {
        string concat = "";
        for (int i = 0; i < list.Length; i++)
        {

            if (!(list[i] == list.Last()))
            {
                concat += list[i] + "_";
            }
            else
            {
                concat += list[i];
            }
        }
        return concat;
    }

    static public HtmlGenericControl afegirXat(String ruta, String nom, String msg, String horaMsg)
    {
        HtmlGenericControl nouDiv = new HtmlGenericControl("DIV");
        nouDiv.Attributes.Add("class", "row table-bordered");

        HtmlGenericControl divImg = new HtmlGenericControl("DIV");
        divImg.Attributes.Add("class", "col-md-2");
        HtmlGenericControl img = new HtmlGenericControl("IMG");
        img.Attributes.Add("class", "img-rounded img-responsive imatgeXats");
        img.Attributes.Add("src", ruta);
        divImg.Controls.Add(img);
        nouDiv.Controls.Add(divImg);

        HtmlGenericControl divText = new HtmlGenericControl("DIV");
        divText.Attributes.Add("class", "col-md-9");
        HtmlGenericControl h3 = new HtmlGenericControl("H3");
        h3.InnerHtml = nom;
        HtmlGenericControl text = new HtmlGenericControl("ASP:LABEL");
        text.Attributes.Add("class", "control-label");
        text.InnerHtml = msg;
        divText.Controls.Add(h3);
        divText.Controls.Add(text);
        nouDiv.Controls.Add(divText);

        HtmlGenericControl divHora = new HtmlGenericControl("DIV");
        divHora.Attributes.Add("class", "col-md-1");
        HtmlGenericControl hora = new HtmlGenericControl("ASP:LABEL");
        hora.InnerHtml = horaMsg;
        nouDiv.Controls.Add(hora);

        return nouDiv;
    }
}