const voteRating = () => {
  console.log("voteRating loaded")

  $(function(){
    if($('div').hasClass("suggestions-wrapper")){
      const cards = document.querySelectorAll(".suggestion-card")
      const ratingFormInput = document.querySelector(".rating_field")

      cards.forEach((element) => {
        const stars = element.querySelectorAll(".vote-rating")

        stars.forEach((star) => {
          addEventListener('click', event => {
          // cambiar event listener en link y hacerlo cuando se hace click en la card como en role new
            console.log(star.dataset)
            ratingFormInput.value = star.dataset.rating.value
        }
        )})
      })
    }
  }
)};

export { voteRating }
