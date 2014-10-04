module ApplicationHelper
  def sortable(column, title = nil)
  	title ||= column.titleize
  	dir = column == params[:sort] && params[:dir] == "asc" ? "desc" : "asc"
  	link_to title, sort: column, dir: dir
  end
end
