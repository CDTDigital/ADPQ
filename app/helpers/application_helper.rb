module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "OrderIT"
    if page_title.empty?
      base_title
    else
     base_title + ': ' + page_title
    end
  end

  def active_class(action_name)
    controller.action_name.eql?(action_name) ? 'active' : ''
  end

end
