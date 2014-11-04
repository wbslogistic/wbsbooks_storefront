class SearchProductsController < ApplicationController
  def search
    if params[:term]
      search_str = "%#{params[:term].downcase}%"

      locale = I18n.locale.to_s
      Rails.logger.info("!!!! #{locale}")
      books = SearchProduct.where("lower(concat_name) like ?
      	and locale = ?", search_str, locale).order("concat_name")    
    else
      books = SearchProduct.all
    end
    list = books.map {|u| Hash[ id: u.product_id, name: u.concat_name]}
    render json: list  	
  end
end
