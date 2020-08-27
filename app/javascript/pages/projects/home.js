const scrollingCards = () => {
  const scrollingcard = document.querySelector('.home-card-container');
  setTimeout(function () {
    if (scrollingcard) {
      cardScroller('.home-first-card');
      cardScroller('.home-second-card');
      cardScroller('.home-third-card');
    };
  }, 1000);
}

function cardScroller(tag) {
  let element_position = $(tag).offset().top;
  const screen_height = $(window).height();
  const activation_offset = 1;//determines how far up the the page the element needs to be before triggering the function
  const activation_point = element_position - (screen_height * activation_offset);
  const max_scroll_height = $('body').height() - screen_height - 300;//-5 for a little bit of buffer
  //Does something when user scrolls to it OR
  //Does it when user has reached the bottom of the page and hasn't triggered the function yet
  $(window).on('scroll', function() {
      var y_scroll_pos = window.pageYOffset;
      var element_in_view = y_scroll_pos > activation_point;
      var has_reached_bottom_of_page = max_scroll_height <= y_scroll_pos && !element_in_view;
      if(y_scroll_pos > 50) {
        document.querySelector(tag).classList.add('d-none');
      }
      if(element_in_view || has_reached_bottom_of_page) {
        document.querySelector(tag).classList.add('slide-in-right');
        document.querySelector(tag).classList.remove('d-none');
      }
  });
}

export { scrollingCards };
