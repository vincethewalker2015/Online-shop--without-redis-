// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require bootstrap
//= require_tree .

$(document).ready(function () {
  $(".navbar-toggle").on("click", function () {
      $(this).toggleClass("active");
  });
});



$(function() {
$('.toggle-nav').click(function() {
// Calling a function in case you want to expand upon this.
toggleNav();
});
});



function toggleNav() {
if ($('#site-wrapper').hasClass('show-nav')) {
  $("#site-wrapper").load("#site-menu");
$('#site-wrapper').removeClass('show-nav');
} else {
// Do things on Nav Open
$('#site-wrapper').addClass('show-nav');
}
