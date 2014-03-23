// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require_tree .

$(function(){ $(document).foundation(); });


$(document).ready(function () {
	
	var poblar_sub_total = function(){
		var data = {};
		data.id_boleto = $('#boleto_precio_boletos_id').val();
		$.post('/boletos/get_total', data).success(function(data){
			$('#boleto_subtotal').val(data);
			actualizar_total();
		});
	};

	var actualizar_total = function(){
		$('#boleto_total').val($('#boleto_subtotal').val() - $('#boleto_descuento').val());
	};

	$('#boleto_descuento').val(0);

	$('#boleto_precio_boletos_id').change(poblar_sub_total);


	$('#boleto_descuento').change(actualizar_total);

	poblar_sub_total();
	actualizar_total();


});
