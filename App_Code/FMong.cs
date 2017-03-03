using MongoDB.Bson;
using MongoDB.Driver;
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

    static public void preUpload(Usuari usuarioR)
    {
        user = usuarioR;

        new Task(Insert).Start();

    }
    

   static protected async void Insert()
    {

        _client = new MongoClient();
        _database = _client.GetDatabase("prova");
        var gustos = new BsonArray();
        string tast = Utils.formArray(user.tastes);
        string iv = Utils.formArray(user.iv);
        
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
}