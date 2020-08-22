import "jquery-bar-rating";
import $ from 'jquery'; // <-- if you're NOT using a Le Wagon template (cf jQuery section)

const initStarRating = () => {

  $('#suggestion_vote_rating').barrating({
    theme: 'css-stars',
    onSelect: (value, text, event) => {
      const form = $("form.vote-form"); // We are selecting the form on the page with its class
      form.submit(); // We submit the form with javascript
    }
  });
};

export { initStarRating };


// BUG: para reproducirlo hacer lo siguiente:
// plugin: https://github.com/antennaio/jquery-bar-rating
// kitt lecture: https://kitt.lewagon.com/knowledge/tutorials/star_rating



// ir a la vista del proyecto http://localhost:3000/projects/7 por ejemplo
// ir a la tab Suggestions y crear una suggestion (formulario de descripcion)
// una vez creada la suggestion, los usuarios pueden votar del 1 al 5.
// hacer click en las estrellas de la card para votar (es un formulario con los radio inputs con estilos de CSS)
// BUG: crear una segunda suggestion y ver como se rompe la vista del formulario en la card.
// esto es porque la funcion de JS captura el id del formulario, y como hay mas de uno ahora, crashea. VER CONSOLA con el error






// fix segun alguno de los issues relacionados a esto en github:

// const initStarRating = () => {
// $('#suggestion_vote_rating').each(function(index, el) {
//   var $El = $(el);
//   $El.barrating({
//     theme: 'css-stars',
//     onSelect: (value, text, event) => {
//       const form = $("form.vote-form");
//       form.submit();
//     }
//   });
// })};
