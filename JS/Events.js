$(document).ready(function () {
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