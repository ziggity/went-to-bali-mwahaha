//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require materialize-sprockets
$(function() {
$("#show-details").click(function() {
 if ($(this).text() === "View Details") {
       $(this).html("Hide Details");
     } else {
       $(this).html("View Details");
     }
     $(this).next().toggle();
   });
 });
