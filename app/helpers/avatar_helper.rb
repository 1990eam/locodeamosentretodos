module AvatarHelper
  def avatar_fixer(model, **args)
    if model.photo.attached?
      cl_image_tag model.photo.key, args
    else
      avatar_url = current_user.github_picture_url || "http://placehold.it/30x30"
      image_tag avatar_url, args
    end
  end
end
