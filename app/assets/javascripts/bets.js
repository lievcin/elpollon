$( document ).on( "change", ".submittable", function() {

     $(this).parents('form:first').submit();
     //$(this).css('color', 'red');
     $(this).animate({
     	color: 'red',
  	}, '100', function() {
  }).delay(400);
     $(this).animate({
     	color: 'black'
  	}, '800', function() {

  });

});

$(document).ready(function() {
  $("#partidos").floatThead()
  $("#results_table").floatThead()
});