const buttons = document.querySelectorAll("#banner-buttons-large a");

$(window).on('resize', function() {
  var win = $(this);
  if (win.width() < 600) {
    buttons.forEach(element => element.classList.remove('btn-lg'));
    buttons.forEach(element => element.classList.add('btn-sm'));
  } else {
    buttons.forEach(element => element.classList.add('btn-lg'));
    buttons.forEach(element => element.classList.remove('btn-sm'));
  }
});

function bannerScroll() {
   const scroll = document.querySelector('.main-banner');
   if (scroll) {
      $('a[href*=\\#section02]').on('click', function(e) {
      e.preventDefault();
      $('html, body').animate({ scrollTop: $($(this).attr('href')).offset().top}, 1000, 'linear');
    });
      $('a[href*=\\#section01]').on('click', function(e) {
      e.preventDefault();
      $('html, body').animate({ scrollTop: 0}, 1000, 'linear');
    });
   }
};

export { bannerScroll };
