// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("jquery")
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import AOS from "aos";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

import '../components/banner.js';
import '../pages/projects/index.js';
import '../pages/application_requests/new.js';
import '../shared/avatar_tooltips.js';

import { showModal } from '../pages/projects/index.js';
import { avatarTooltips } from '../shared/avatar_tooltips.js';
import { clickableCard } from '../pages/application_requests/new.js';
import { initStarRating } from '../plugins/init_star_rating';
import { initChatroomCable } from '../channels/chatroom_channel.js';
import { submitForm } from '../components/chatroom-form.js';
import { initUpdateNavbarOnScroll } from '../components/navbar';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  AOS.init();
  showModal();
  avatarTooltips(); // dejar dentro y fuera de turbolinks load
  clickableCard();
  initStarRating();
  initChatroomCable();
  submitForm();
  initUpdateNavbarOnScroll();
});
  avatarTooltips(); // dejar dentro y fuera de turbolinks load


