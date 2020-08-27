module AvatarHelper
  def avatar_fixer(model, **args)
    if model.photo.attached?
      cl_image_tag model.photo.key, args
    else
      avatar_url = model.github_picture_url || "default-user-img.png"
      image_tag avatar_url, args
    end
  end
end
