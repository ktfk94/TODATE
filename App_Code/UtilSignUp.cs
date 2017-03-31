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


    public static byte[] ReadToEnd(System.IO.Stream stream)
    {
        long originalPosition = 0;

        if (stream.CanSeek)
        {
            originalPosition = stream.Position;
            stream.Position = 0;
        }

        try
        {
            byte[] readBuffer = new byte[4096];

            int totalBytesRead = 0;
            int bytesRead;

            while ((bytesRead = stream.Read(readBuffer, totalBytesRead, readBuffer.Length - totalBytesRead)) > 0)
            {
                totalBytesRead += bytesRead;

                if (totalBytesRead == readBuffer.Length)
                {
                    int nextByte = stream.ReadByte();
                    if (nextByte != -1)
                    {
                        byte[] temp = new byte[readBuffer.Length * 2];
                        Buffer.BlockCopy(readBuffer, 0, temp, 0, readBuffer.Length);
                        Buffer.SetByte(temp, totalBytesRead, (byte)nextByte);
                        readBuffer = temp;
                        totalBytesRead++;
                    }
                }
            }

            byte[] buffer = readBuffer;
            if (readBuffer.Length != totalBytesRead)
            {
                buffer = new byte[totalBytesRead];
                Buffer.BlockCopy(readBuffer, 0, buffer, 0, totalBytesRead);
            }
            return buffer;
        }
        finally
        {
            if (stream.CanSeek)
            {
                stream.Position = originalPosition;
            }
        }
    }
}