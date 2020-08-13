const showModal = () => {
  // console.log("File loaded")
  const page = document.getElementsByClassName("index-projects");
  const skills = document.getElementById("user-skills").innerHTML

  if (skills < 1) {
    $(document).ready(function(){
        $("#skillsModal").modal('show');
    });
  }

};

export { showModal};


// on page load leer el inner html de skills
// si es menor que 1, hacer triger del modal
