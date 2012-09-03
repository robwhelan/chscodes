$(function() {
  $('.subnav ul.nav a').click(function(e) {
    e.preventDefault();
    $.scrollTo($(this).attr('href'), 1200, { offset: { top: -155, left: 0}});
  });
});