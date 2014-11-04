  task :fill_products => :environment do
    SearchProduct.fill_products
  end