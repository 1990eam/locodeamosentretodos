const showModal = () => {
  // console.log("showModal loaded")
  // no agregar lineas 8 y 9 fuera de $(function) por favor

  $(function(){
    if($('div').hasClass("index-projects")){
      const page = document.getElementsByClassName("index-projects");
        console.log("We are at projects index")
        const skills = document.getElementById("user-skills").innerHTML
        if (skills < 1) {
          $(document).ready(function(){
              $("#skillsModal").modal('show');
          });
        }
    }
  });
};

const clickableIndexCard = () => {
  const indexCards = document.querySelectorAll('.index-project-card');
  if (indexCards) {
      indexCards.forEach(item => {
        item.addEventListener('click', event => {
          console.log(item.dataset.targetUrl);
          location.replace(item.dataset.targetUrl);
        });
      });
    }
};

export { showModal, clickableIndexCard };

