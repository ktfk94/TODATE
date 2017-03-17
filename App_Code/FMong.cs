using MongoDB.Bson;
using MongoDB.Driver;

using MongoDB.Driver.Builders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

/// <summary>
/// Summary description for FMong
/// </summary>
public class FMong
{

    protected static IMongoClient _client;
    protected static IMongoDatabase _database;
    static Usuari user = new Usuari();

    public FMong()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    //static void Main(string[] args)
    //{
    //    CallMain(args).Wait();
    //    Console.ReadLine();
    //}


    //static async Task CallMain(string[] args)
    //{
    //    var conString = "mongodb://localhost:27017";
    //    var Client = new MongoClient(conString);
    //    var DB = Client.GetDatabase("test");
    //    var collection = DB.GetCollection<BsonDocument>("store");
    //}

    static public void preUpload(Usuari usuarioR, string tipo)
    {
        user = usuarioR;

        if (tipo == "Insert")
        {
            new Task(Insert).Start();
        }

        if (tipo == "Select")
        {
            //new Task(Select).Start();
        }


    }

    static public bool preUploadSelect(string correu, string pw)
    {
        bool comp = false;
        comp = Select(correu, pw);
        return comp;
    }


    static protected async void Insert()
    {

        _client = new MongoClient();
        _database = _client.GetDatabase("prova");
        var gustos = new BsonArray();
        string tast = UtilSignUp.formArray(user.tastes);
        string iv = UtilSignUp.formArray(user.iv);

        /*gustos.Add(new BsonDocument{  //Codi per a posar un array dintre del document
            {"tastes", tast}
        });*/
        var document = new BsonDocument
            {
                { "name",  user.name},
                { "birthdate", user.birthdate},
                //{ "img", "Blank"},
                { "sex", user.sex },
                { "sexWanted", user.sexWanted },
                { "mail", user.mail },
                { "pw", user.pw },
                { "colour", user.colour },
                { "typeOfHair", user.typeOfHair },
                { "shape", user.shape},
                { "tastes", tast },
                { "sports", user.sports },
                //{ "birthplace", user.birthplace },
                //{ "ubication", "blank" },
                //{ "religion", user.religion },
                { "civil status", user.civilstatus },
                { "children", user.children },
                { "iv", iv },
            };

        var collection = _database.GetCollection<BsonDocument>("Usuaris");
        await collection.InsertOneAsync(document);
    }

    static protected bool Select(string correu, string pw)
    {

        //_client = new MongoClient();
        //database = _client.GetDatabase("prova");
        var client = new MongoClient("mongodb://localhost");
        var coll = client.GetServer().GetDatabase("prova").GetCollection("Usuaris");


        /*gustos.Add(new BsonDocument{  //Codi per a posar un array dintre del document
            {"tastes", tast}
        });*/
        //var collection = _database.GetCollection<BsonDocument>("Usuaris");
        //var filter = Builders<BsonDocument>.Filter.Eq("name", user.name);
        //var count = 0;
        //var batch = new BsonDocument();
        //using (var cursor = await collection.FindAsync(filter))
        //{
        //    while (await cursor.MoveNextAsync())
        //    {
        //         batch= cursor.Current;
        //        foreach (var document in batch)
        //        {
        //            // process document
        //            count++;
        //        }
        //    }
        //}

        var query = Query.EQ("mail", correu);
        var doc2 = coll.FindOne(query);
        MongoDB.Bson.BsonValue valueMail = null;
        MongoDB.Bson.BsonValue valuePw = null;
        if (doc2 != null)
        {
            valueMail = doc2["mail"];
            valuePw = doc2["pw"];
        }

        bool comp = false;
        if (valueMail != null && valuePw != null)
        {
            if (valueMail.AsString == correu && Encrypt.Desencriptar(valuePw.AsString, "") == pw)
            {
                comp = true;
            }
        }


        return comp;
    }
}