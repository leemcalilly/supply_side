module ApplicationHelper
  
  def app_name
    'Supply Side'
  end

  def app_domain
    'gosupplyside.com'
  end

  def system_email
    'leemcalilly@gmail.com'
  end
    
  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "#{app_name}"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
end
