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

//$("#menu-toggle").click(function(e) {
//    e.preventDefault();
//    $("#wrapper").toggleClass("active");
//});
