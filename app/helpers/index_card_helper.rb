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
    when url.match?(/wikipedia/i)
      "<i class='fab fa-wikipedia-w'></i>"
    when url.match?(/wagon/i)
      "<i class='fas fa-truck-moving'></i>"
    else
      "<i class='fas fa-globe'></i>"
    end
  end

  def shorten_url(url)
    return "" if url.nil?

    if url.match?(Regexp.union("github", "facebook", "instagram", "bitbucket", "linkedin", "twitter", "wikipedia"))
      url.match(/\/(.*)/)[1]
    else
      url
    end
  end

  def pick_tech_icon(tech_name)
    return "" if tech_name.nil?

    case
    when tech_name.match?(/Ruby/i)
      "<i class='fab fa-sketch red'style='color: red;'></i>"
    when tech_name.match?(/Javascript/i)
      "<i class='fab fa-js-square'style='color:teal;'></i>"
    when tech_name.match?(/CSS/i)
      "<i class='fab fa-css3-alt' style='color: blue;'></i>"
    when tech_name.match?(/HTML/i)
      "<i class='fab fa-html5'style='color: orange;'>"
    when tech_name.match?(/Java/i)
      "<i class='fab fa-java'style='color: royalblue;'></i>"
    when tech_name.match?(/Python/i)
      "<i class='fab fa-python'style='color: seagreen;'></i>"
    when tech_name.match?(/React/i)
      "<i class='fab fa-react'style='color:mediumturquoise;'></i>"
    when tech_name.match?(/Negotiation/i)
      "<i class='fas fa-hand-rock'></i>"
    when tech_name.match?(/Physique/i)
      "<i class='fas fa-dumbbell' style='color: maroon;'></i>"
    when tech_name.match?(/Rails/i)
      "<i class='fas fa-train' style='color: orangered;'></i>"
    when tech_name.match?(/People skills/i)
      "<i class='fas fa-people-arrows' style='color: paleturquoise;'></i>"
    when tech_name.match?(/Agile/i)
      "<i class='fas fa-tasks' style='color: lightslategrey;'></i>"
    when tech_name.match?(/Scrum/i)
      "<i class='fas fa-tasks' style='color: silver;'></i>"
    when tech_name.match?(/Accounting/i)
      "<i class='fas fa-calculator' style='color: brown;'></i>"
    when tech_name.match?(/Nutrition/i)
      "<i class='fas fa-utensils' style='color: yellowgreen;'></i>"
    when tech_name.match?(/Health/i)
      "<i class='far fa-hospital' style='color: orchid;'></i>"
    when tech_name.match?(/AI/i)
      "<i class='fas fa-brain' style='color: lightpink;'></i>"
    when tech_name.match?(/Logistics/i)
      "<i class='fas fa-people-carry' style='color: coral;'></i>"
    when tech_name.match?(/HR/i)
      "<i class='fas fa-users' style='color: limegreen;'></i>"
    when tech_name.match?(/Data Science/i)
      "<i class='fas fa-flask' style='color: purple;'></i>"
    else
      "<i class='fas fa-laptop-code'></i>"
    end
  end
end
