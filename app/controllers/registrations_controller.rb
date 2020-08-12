class RegistrationsController < Devise::RegistrationsController

  protected


  def after_sign_up_path_for(resource)
    "/projects"
  end

  def after_sign_in_path_for(resource)
    raise
    "/projects"
  end

end
