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
    
    
});
