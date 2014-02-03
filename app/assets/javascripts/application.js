//
//= require flatty/jquery/jquery.min
//= require jquery_ujs
//= require flatty/jquery/jquery.mobile.custom.min
//= require flatty/jquery/jquery-migrate.min
//= require flatty/jquery/jquery-ui.min
//= require flatty/bootstrap/bootstrap.min
//= require flatty/plugins/plugins
//= require flatty/theme
//= require facebook_invite
//= require highcharts/highcharts                                                           
//= require highcharts/highcharts-more                                                         
//= require highcharts/highstock

$('.dropdown-toggle').dropdown()

$( document ).on( "change", ".submittable", function() {

     $(this).parents('form:first').submit();
     $(this).animate({
             color: 'red',
          }, '100', function() {
     }).delay(700);

     $(this).animate({
             color: 'black'
          }, '800', function() {
  });
});