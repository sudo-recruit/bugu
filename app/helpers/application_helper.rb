module ApplicationHelper
  def current_page
  	return params[:controller] + "#" +  params[:action]
  end
end
