
//$('.dropdown-toggle').dropdown()

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

