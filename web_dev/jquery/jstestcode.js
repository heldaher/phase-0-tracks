$(document).ready(function() {

  $("em").hide();

  $("h2").click(function() {
    $(this).next().slideToggle(300);
  });

  $("h1,h2,strong").css("background-color","red");

});



