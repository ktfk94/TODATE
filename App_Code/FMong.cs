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
    static Busca busca = new Busca();

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

    static public void preUpload(Usuari usuarioR, Busca buscaR)
    {
        user = usuarioR;
        busca = buscaR;
        new Task(Insert).Start();
    }

    static public bool preSelect(string correu, string pw)
    {
        bool comp = false;
        comp = SelectLogIn(correu, pw);
        return comp;
    }


    static protected async void Insert()
    {

        _client = new MongoClient();
        _database = _client.GetDatabase("prova");
        var gustos = new BsonArray();
        string tast = UtilSignUp.formArray(user.tastes);
        string iv = UtilSignUp.formArray(user.iv);
        string tastBus = UtilSignUp.formArray(busca.tastes);
        string IvBus = UtilSignUp.formArray(busca.iv);
        //string sports = UtilSignUp.formArray(user.sports);

        /*gustos.Add(new BsonDocument{  //Codi per a posar un array dintre del document
            {"tastes", tast}
        });*/
        var buscaTipo = new BsonArray();
        buscaTipo.Add(new BsonDocument
            {
               { "age", busca.edat},
               { "civilstatus", busca.civilstatus},
               { "colour", busca.colour},
               { "children", busca.children},
               { "sex_wanted", busca.sex},
               { "shape", busca.shape},
               { "sports", busca.sports},
               { "tastes", tastBus},
               { "Iv", IvBus},
            });

        var document = new BsonDocument
            {
                { "name",  user.name},
                { "birthdate", user.birthdate},
                { "img", user.img},
                { "sex", user.sex },
                { "sexWanted", user.sexWanted },
                { "mail", user.mail },
                { "pw", user.pw },
                { "colour", user.colour },
                { "typeOfHair", user.typeOfHair },
                { "shape", user.shape},
                { "tastes", tast },
               // { "sports", sports },
                //{ "birthplace", user.birthplace },
                //{ "ubication", "blank" },
                //{ "religion", user.religion },
                { "civil status", user.civilstatus },
                { "children", user.children },
                { "iv", iv },

                
    };

        document.Add("busca",buscaTipo);
        var collection = _database.GetCollection<BsonDocument>("Usuaris");
        await collection.InsertOneAsync(document);
    }

    static protected async void Update()
    {

        _client = new MongoClient();
        _database = _client.GetDatabase("prova");
        var gustos = new BsonArray();
        //string tast = UtilSignUp.formArray(user.tastes);
       // string iv = UtilSignUp.formArray(user.iv);
        var filter = Builders<BsonDocument>.Filter.Eq("mail", user.mail);

        /*gustos.Add(new BsonDocument{  //Codi per a posar un array dintre del document
            {"tastes", tast}
        });*/
        var update = Builders<BsonDocument>.Update.Set("colour", user.colour)
                                                    .Set("shape", user.shape)
                                                    .Set("name", user.name)
                                                    .Set("typeOfHair", user.typeOfHair)
                                                    .Set("civilstatus", user.civilstatus);


        var collection = _database.GetCollection<BsonDocument>("Usuaris");
        await collection.UpdateOneAsync(filter, update);
    }

    static protected bool SelectLogIn(string correu, string pw)
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
            if (valueMail.AsString == correu && Encrypt.Desencriptar(valuePw.AsString) == pw)
            {
                comp = true;
            }
        }


        return comp;
    }


    static public Usuari SelectUser(String correu )
    {
        
        //_client = new MongoClient();
        //database = _client.GetDatabase("prova");
        var client = new MongoClient("mongodb://localhost");
        var coll = client.GetServer().GetDatabase("prova").GetCollection("Usuaris");

        var query = Query.EQ("mail", correu);
        var doc2 = coll.FindOne(query);

        BsonValue valueName = null;
        BsonValue valueBirth = null;
        BsonValue valueMail = null;
        BsonValue valueImg = null;
        BsonValue valueSex = null;
        BsonValue valueSexWanted = null;
        BsonValue valueColor = null;
        BsonValue valueHair = null;
        BsonValue valueShape = null;
        BsonValue valueTastes = null;
        BsonValue valueCivil = null;
        BsonValue valueChildren = null;
        if (doc2 != null)
        {
            valueName = doc2["name"];
            valueMail = doc2["mail"];
            valueBirth = doc2["birthdate"];
            valueImg = doc2["img"];
            valueSex = doc2["sex"];
            valueSexWanted = doc2["sexWanted"];
            valueColor = doc2["colour"];
            valueHair = doc2["typeOfHair"];
            valueShape = doc2["shape"];
            valueTastes = doc2["tastes"];
            valueCivil = doc2["civil status"];
            valueChildren = doc2["civil status"];
        }

        bool comp = false;
        if (valueMail != null && valueName != null)
        {
            if (valueMail.AsString == correu)
            {
                user.name = valueName.AsString;
                user.mail = valueMail.AsString;
                user.birthdate = valueBirth.AsString;
                user.img = valueImg.AsByteArray;
                user.sex = valueSex.AsString;
                user.sexWanted = valueSexWanted.AsString;
                user.colour = valueColor.AsString;
                user.typeOfHair = valueHair.AsString;
                user.shape = valueShape.AsString;
                user.tastes = valueTastes.AsString.Split('_');
                //user.sports = valueTastes.AsString.Split('_');
                //user.iv = valueTastes.AsString.Split('_');
            }
        }


        return user;
    }
}