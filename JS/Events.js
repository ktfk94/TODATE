$(document).ready(function () {

   var total = 0
    $('#TextBoxCercador').keypress(function () {
        var buscar = $(this).text();
        $('#espaiXats > div').each(function () {
            //asd
        });
    });

    $('#LinkButtonContinuar').click(function(){
        alert("dshdshssd");
        var barra = $('#BarraProgres');
        barra.value = total += 25;
    });
    
    
});
