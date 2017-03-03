using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MongoDB.Bson;
using System.Threading.Tasks;
using MongoDB.Driver;

public partial class Mongo : System.Web.UI.Page
{
    protected static IMongoClient _client;
    protected static IMongoDatabase _database;
    Usuari user = new Usuari();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Boto(object sender, EventArgs e)
    {
        
        new Task(Upload ).Start();

    }

    protected async void Upload()
    {

        _client = new MongoClient();
        _database = _client.GetDatabase("prova");

        var document = new BsonDocument
            {

                { "name", "Vella" },
                { "birthdate", "Vella" },
                { "img", "blank" },
                { "sex", "Vella" },
                { "sexWanted", "Vella" },
                { "mail", "Vella" },
                { "pw", "Vella" },
                { "colour", "Vella" },
                { "typeOfHair", "Vella" },
                { "shape", "Vella" },
                { "tastes", "blank" },
                { "sports", "Vella" },
                { "birthplace", "Vella" },
                { "ubication", "blank" },
                { "religion", "Vella" },
                { "civil status", "Vella" },
                { "children", "blank" },
                { "iv", "Vella" },

                { "restaurant_id", "41704620" }
            };

        var collection = _database.GetCollection<BsonDocument>("mycol");
        await collection.InsertOneAsync(document);
    }
}
