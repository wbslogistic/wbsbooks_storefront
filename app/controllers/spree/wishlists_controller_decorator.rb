Spree::WishlistsController.class_eval do
  before_filter :find_taxonomies, only: [:show, :index]
  layout 'application'

  private

  def find_taxonomies
    @taxonomies = Spree::Taxonomy.includes(root: :children)
  end
end
