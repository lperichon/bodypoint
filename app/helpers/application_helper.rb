# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def current_page_is? page_name
    return true if request.request_uri == "/pages/#{page_name}"
  end
end
