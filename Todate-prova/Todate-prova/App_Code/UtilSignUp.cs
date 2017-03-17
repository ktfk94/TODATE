using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for UtilSignUp
/// </summary>
public class UtilSignUp
{
    public UtilSignUp()
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
}