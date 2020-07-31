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
