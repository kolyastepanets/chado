module ApplicationHelper
  def background
    if background_yellow?
      "background: linear-gradient(white, yellow, yellow, white);"
    elsif not_allowed_pages
      ""
    else
      "background: linear-gradient(white, #A1E396, #A1E396, white);"
    end
  end

  def background_yellow?
    candy_bar_show_page || candy_bar_index_page
  end

  def not_allowed_pages
    landing_page || additional_services_page
  end

  def landing_page
    controller.controller_name == "pages" && controller.action_name == "landing"
  end

  def additional_services_page
    controller.controller_name == "additional_services" && controller.action_name == "index"
  end

  def candy_bar_show_page
    controller.controller_name == "candy_bars" && controller.action_name == "show"
  end

  def candy_bar_index_page
    controller.controller_name == "candy_bars" && controller.action_name == "index"
  end
end
