module ApplicationHelper
  def sortable(column, title = nil)
  	title ||= column.titleize
  	dir = column == params[:sort] && params[:dir] == "asc" ? "desc" : "asc"
  	css_class = column == params[:sort] ? "tsort #{params[:dir]}" : nil
  	link_to title, {sort: column, dir: dir, title: params[:title], 
  	isbn: params[:isbn], author: params[:author], publisher: params[:publisher]}, class: css_class
  end
end
