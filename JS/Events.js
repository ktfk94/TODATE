$(document).ready(function () {

    var total = 25;
    $('#TextBoxCercador').keypress(function () {
        var buscar = $(this).text();
        $('#espaiXats > div').each(function () {
            //asd
        });
    });

    $('#LinkButtonContinuar').on('click', function () {
        $('#BarraProgres').val(total+=25);
    });
    //Load
    function loadAirems(esports,gustos,IVs) {
        for (var cont = 0; cont < esports.length;cont++){
            var nouLi = crearElement(esports[cont]);
            $('#divEsports').find('ul').append(nouLi);
        }
        for (var cont = 0; cont < gustos.length; cont++) {
            var nouLi = crearElement(esports[cont]);
            $('#divGustos').find('ul').append(nouLi);
        }
        for (var cont = 0; cont < IVs.length; cont++) {
            var nouLi = crearElement(esports[cont]);
            $('#divIV').find('ul').append(nouLi);
        }
    }
    function recollirDades() {
        var esports = new Array();
        var gustos = new Array();
        var IVs = new Array();
        $('#divEsports ul').find('input').each(function () {
            esports.push($(this).val());
        });
        $('#divGustos ul').find('input').each(function () {
            gustos.push($(this).val());
        });
        $('#divIV ul').find('input').each(function () {
            IVs.push($(this).val());
        });
        var dades = new Array(esports, gustos, IVs);
        return dades;
    }

    //Afegir un nou esport
    $('#LinkButtonAfegirEsport').on('click', function () {
        //Recollim el nou contingut del textbox esport
        var nouEsport = $('#TextBoxAfegirEsport').val();
        if (nouEsport != null && nouEsport != "") {
            //Creem el nou li
            var nouLi = crearElement(nouEsport);

            $('#divEsports').find('ul').append(nouLi);
            $('#TextBoxAfegirEsport').val("");
        }
        
    });   

    //Afegir un nou gust
    $('#LinkButtonAfegirGust').on('click', function () {
        //Recollim el nou contingut del textbox esport
        var nouGust = $('#TextBoxAfegirGust').val();
        if (nouGust != null && nouGust != "") {
            //Creem el nou li
            var nouLi = crearElement(nouGust);

            $('#divGustos').find('ul').append(nouLi);
            $('#TextBoxAfegirGust').val("");
        }

    });

    //Afegir un nou IV
    $('#LinkButtonAfegirIV').on('click', function () {
        //Recollim el nou contingut del textbox esport
        var nouGust = $('#TextBoxAfegirIV').val();
        if (nouGust != null && nouGust != "") {
            //Creem el nou li
            var nouLi = crearElement(nouGust);

            $('#divIV').find('ul').append(nouLi);
            $('#TextBoxAfegirIV').val("");
        }

    });

    //Borrar un element seleccionat
    $('ul').on('click', 'li img', function () {
        $(this).parent().remove();
    });

    //Crear Element
    function crearElement(valor) {
        var scriptLlista = document.createElement('li');
        scriptLlista.className = "list-group-item";
        //Creem el nou textbox
        var textB = document.createElement('input');
        textB.type = "text";
        textB.value = valor;
        //Creem el botó per borrarà l'element
        var img = document.createElement('img');
        img.src = "./Imatges/redX.png";
        img.className = "borrarElement";

        scriptLlista.append(textB);
        scriptLlista.append(img);

        return scriptLlista;
    }
});