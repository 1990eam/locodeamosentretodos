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
    when url.match?(/bitbucket/i)
      "<i class='fab fa-bitbucket'></i>"
    when url.match?(/linkedin/i)
      "<i class='fab fa-linkedin'></i>"
    when url.match?(/twitter/i)
      "<i class='fab fa-twitter-square'></i>"
    else
      "<i class='fas fa-globe'></i>"
    end
  end

  def pick_tech_icon(tech_name)
    return "" if tech_name.nil?

    case
    when tech_name.match?(/Ruby/i)
      "<i class='fab fa-sketch'style='color: red;'></i>"
    when tech_name.match?(/Javascript/i)
      "<i class='fab fa-js-square'style='color:teal;'></i>"
    when tech_name.match?(/CSS/i)
      "<i class='fab fa-css3-alt'style='color: blue;'></i>"
    when tech_name.match?(/HTML/i)
      "<i class='fab fa-html5'style='color: orange;'>"
    when tech_name.match?(/Java/i)
      "<i class='fab fa-java'style='color: blue;'></i>"
    when tech_name.match?(/Python/i)
      "<i class='fab fa-python'></i>"
    when tech_name.match?(/React/i)
      "<i class='fab fa-react'style='color:teal;'></i>"
    when tech_name.match?(/Plain Old Violence/i)
      "<i class='fas fa-hand-rock'></i>"
    else
      "<i class='fas fa-laptop-code'></i>"
    end
  end
end
