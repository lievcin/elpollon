(function() {
  $(function() {
	return $("#menu-toggle").on("click", function() {
	  event.preventDefault();
	  $("#wrapper").toggleClass("active");
	});
  });
}).call(this);