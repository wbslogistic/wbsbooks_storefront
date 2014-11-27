module ApplicationHelper
  def sortable(column, title = nil)
    title ||= column.titleize
    dir = column == params[:sort] && params[:dir] == "asc" ? "desc" : "asc"
    css_class = column == params[:sort] ? "tsort #{params[:dir]}" : nil
    link_to title, {sort: column, dir: dir, title: params[:title], 
    isbn: params[:isbn], author: params[:author], publisher: params[:publisher]}, class: css_class
  end

  def selected_currency
    rtn_val = nil
    supported_currencies.each{|sc| rtn_val = sc if sc.iso_code == current_currency }
    return rtn_val
  end
end
