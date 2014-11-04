class SearchProduct < ActiveRecord::Base
  belongs_to :product

  def self.fill_products
    connection = ActiveRecord::Base.connection
    # fill english translation products
    query_en = "insert into search_products 
	(product_id, locale, isbn, name, author, publisher, concat_name, created_at, updated_at)
	select
	p.id,
	'en', 
	v.sku, 
	p_tr.name, 
	t_tr_author.name,
	t_tr_publisher.name,
	p_tr.name || ' (' || t_tr_author.name || ', ' || t_tr_publisher.name || ')',
	current_timestamp as created_at,
	current_timestamp as updated_at
	from spree_products p
	join spree_variants v on p.id = v.product_id
	join spree_product_translations p_tr on p_tr.spree_product_id = p.id
	JOIN spree_products_taxons pt_author on pt_author.product_id = p.id 
	join spree_taxons t_author on t_author.id = pt_author.taxon_id
	join spree_taxon_translations t_tr_author on t_tr_author.spree_taxon_id = t_author.id
	JOIN spree_products_taxons pt_publisher on pt_publisher.product_id = p.id 
	join spree_taxons t_publisher on t_publisher.id = pt_publisher.taxon_id
	join spree_taxon_translations t_tr_publisher on t_tr_publisher.spree_taxon_id = t_publisher.id
	where v.is_master = 't' and 
	p_tr.locale = 'en' and
	t_author.permalink like 'authors/%'
	and t_tr_author.locale = 'en'
	and t_publisher.permalink like 'publishers/%'
	and t_tr_publisher.locale = 'en'"
    # fill russian translation products
    query_ru = "insert into search_products 
	(product_id, locale, isbn, name, author, publisher, concat_name, created_at, updated_at)
	select
	p.id,
	'ru', 
	v.sku, 
	p_tr.name, 
	t_tr_author.name,
	t_tr_publisher.name,
	p_tr.name || ' (' || t_tr_author.name || ', ' || t_tr_publisher.name || ')',
	current_timestamp as created_at,
	current_timestamp as updated_at
	from spree_products p
	join spree_variants v on p.id = v.product_id
	join spree_product_translations p_tr on p_tr.spree_product_id = p.id
	JOIN spree_products_taxons pt_author on pt_author.product_id = p.id 
	join spree_taxons t_author on t_author.id = pt_author.taxon_id
	join spree_taxon_translations t_tr_author on t_tr_author.spree_taxon_id = t_author.id
	JOIN spree_products_taxons pt_publisher on pt_publisher.product_id = p.id 
	join spree_taxons t_publisher on t_publisher.id = pt_publisher.taxon_id
	join spree_taxon_translations t_tr_publisher on t_tr_publisher.spree_taxon_id = t_publisher.id
	where v.is_master = 't' and 
	p_tr.locale = 'ru' and
	t_author.permalink like 'authors/%'
	and t_tr_author.locale = 'ru'
	and t_publisher.permalink like 'publishers/%'
	and t_tr_publisher.locale = 'ru'"
	connection.execute("delete from search_products")
	connection.execute(query_en) 
    connection.execute(query_ru) 
  end

end
