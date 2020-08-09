module IndexCardHelper
  def pick_url_icon(url)
    return "" if url.nil?

    case
    when url.match?(/github/i)
      "<i class='fab fa-github-square'></i>"
    when url.match?(/facebook/i)
      "<i class='fab fa-facebook-square'></i>"
    when url.match?(/instagram/i)
      "<i class='fab fa-instagram-square'></i>"
    else
      "<i class='fas fa-globe'></i>"
    end
  end
end
