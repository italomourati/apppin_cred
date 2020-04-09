// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
//require("jquery")
//require("popper.js")
//require("bootstrap")
//require("@fortawesome/fontawesome-free")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import "@fortawesome/fontawesome-free/js/all";
import 'bootstrap';

$(document).ready(function() {
  var scrollTop = 0;
  $(window).scroll(function() {
      scrollTop = $(window).scrollTop();
      $('.counter').html(scrollTop);

      if (scrollTop >= 25) {
          $('#menu_principal').addClass('fixed-top');
      } else if (scrollTop < 25) {
          $('#menu_principal').removeClass('fixed-top');
      }
  });
});

//smoothscroll
$('a[href^="#"]').on('click', function(e) {
  e.preventDefault();
  $(document).off("scroll");

  $('a').each(function() {
      $(this).removeClass('active');
  })
  $(this).addClass('active');

  var target = this.hash,
      teste = target;
  $target = $(target);
  $('html, body').stop().animate({
      'scrollTop': $target.offset().top + 1
  }, 500, 'swing', function() {
      window.location.hash = target;
      $(document).on("scroll");
  });
});
require("trix")
require("@rails/actiontext")