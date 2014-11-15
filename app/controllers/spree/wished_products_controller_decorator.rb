Spree::WishedProductsController.class_eval do
  def destroy_all
    @wishlist = Spree::Wishlist.get_by_param(params[:wishlist])
    @wishlist.wished_products.destroy_all
    redirect_to :back
  end
end
