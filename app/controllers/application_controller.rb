class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_root_taxon

  def set_root_taxon
    @root_taxon = Spree::Taxon.first
  end
end
