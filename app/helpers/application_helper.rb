module ApplicationHelper

 def full_title(page)
    base_title = "Sweet Little Buttercups"
    if page.empty?
      base_title
    else "#{base_title} | #{page}"
    end
  end
end
