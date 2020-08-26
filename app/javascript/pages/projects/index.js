const showModal = () => {
  $(function(){
    if($('div').hasClass("index-projects")){
      const page = document.getElementsByClassName("index-projects");
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
  const indexCards = document.querySelectorAll('.index-project-card-clickable');
  const linkCards = document.querySelectorAll('.link-z-index');
  if (indexCards) {
      indexCards.forEach(item => {
        item.addEventListener('click', event => {
          location.replace(item.dataset.targetUrl);
        });
      });
    }
};

export { showModal, clickableIndexCard };

