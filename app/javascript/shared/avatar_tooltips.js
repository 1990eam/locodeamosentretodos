const avatarTooltips = () => {
    console.log("avatarTooltips loaded");

  $(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();
  });

}

export { avatarTooltips };
