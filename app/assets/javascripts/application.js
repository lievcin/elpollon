//
//= require flatty/jquery/jquery.min
//= require jquery_ujs
//= require submit_form
//= require flatty/jquery/jquery.mobile.custom.min
//= require flatty/jquery/jquery-migrate.min
//= require flatty/jquery/jquery-ui.min
//= require jquery.isotope.min.js
//= require flatty/bootstrap/bootstrap.min
//= require flatty/plugins/plugins
//= require flatty/theme
//= require facebook_invite
//= require highcharts/highcharts

$(function(){

	// cache container
	var $container = $('#container');
	// initialize isotope
	$container.isotope({});

	// filter items when filter link is clicked
	$('#filters a').click(function(){
	  var selector = $(this).attr('data-filter');

	  var $optionSet = $(this).parents('.option-set');
      $optionSet.find('.selected').removeClass('selected');
      $(this).addClass('selected');

	  $container.isotope({ filter: selector });
	  return false;
	});

});


