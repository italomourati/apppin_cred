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


