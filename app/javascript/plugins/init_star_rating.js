import "jquery-bar-rating";
import $ from 'jquery';
const initStarRating = () => {
  document.querySelectorAll(".suggestion-card").forEach((el) => {
    const target = el.dataset.target
    $(`#target_${target}`).barrating({
      theme: 'css-stars',
      onSelect: (value, text, event) => {
      const form = $(`form.vote-form.form-target${target}`);
      form.submit();
    }
  });
  })
};
export { initStarRating };


// plugin: https://github.com/antennaio/jquery-bar-rating
// kitt lecture: https://kitt.lewagon.com/knowledge/tutorials/star_rating
