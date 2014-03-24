
$('.boleto_form').ready(function () {
	
	$.each($('#boleto_itinerarios_id option'), function(index, el){
		var tmp = $(el).text();
		var nueva_hora = tmp.substring(11,16);
		$(el).text(nueva_hora);
	});

	var poblar_sub_total = function(){
		var data = {};
		data.id_boleto = $('#boleto_precio_boletos_id').val();
		$.post('/boletos/get_total', data).success(function(data){
			$('#boleto_subtotal').val(data);
			actualizar_total();
		});
	};

	var actualizar_total = function(){
		$('#boleto_total').val( $('#boleto_subtotal').val() - ($('#boleto_subtotal').val() * ($('#boleto_descuento').val())/100));
	};

	$('#boleto_descuento').val(0);

	$('#boleto_precio_boletos_id').change(poblar_sub_total);


	$('#boleto_descuento').change(actualizar_total);

	poblar_sub_total();
	actualizar_total();
});

	
	$('.show_boletos span').text($('.show_boletos span').text().substring(11,16));

	$('.boleto_form').submit(function () {

    // Get the Login Name value and trim it
    var id = $.trim($('#boleto_identidad').val());
    var name = $.trim($('#boleto_nombre').val());

    // Check if empty of not
    if (id  === '' && name === '') {
    	
    	$('.panel').append('<div class="row"><div class="large 12 columns"><div data-alert class="alert-box">No puede dejar campos vacios<a class="close">&times;</a></div></div></div>');
    	$('a.close').on('click',function(){
    		$(this).parent().remove();
    	})
        return false;
    }
});
