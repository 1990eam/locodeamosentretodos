const clickableCard = () => {

    if($('div').hasClass("clickable-card")){
    const clickables = document.querySelectorAll('.clickable-card')
    const role_id_field = document.querySelector('.role_field')

      clickables.forEach((element) => {
       element.addEventListener('click', event => {
        role_id_field.value = element.dataset.target;
        clickables.forEach((card) => {
          card.classList.remove("clicked_card")
        })
        element.classList.add("clicked_card");
      })
    })

}};

export { clickableCard };
