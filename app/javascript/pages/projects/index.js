const showModal = () => {
  // console.log("showModal loaded")
  const page = document.getElementsByClassName("index-projects");
  const skills = document.getElementById("user-skills").innerHTML


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

export { showModal};

