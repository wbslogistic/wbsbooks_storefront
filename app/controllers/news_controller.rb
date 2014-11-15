class NewsController < Spree::StoreController
  helper 'spree/products'

	SOURCE_LINKS = { 	:eksmo => 'http://eksmo.ru/subscr/news_rss.php',
										:inostranka => 'http://inostrankabooks.ru/rss.xml',
										:pro_books => 'http://pro-books.ru/news/3/feed',
										:bookmix => 'http://bookmix.ru/news.xml'
									}
	SOURCE_ROOTS = {	:eksmo => 'http://eksmo.ru',
										:inostranka => 'http://inostrankabooks.ru',
										:pro_books => 'http://pro-books.ru',
										:bookmix => 'http://bookmix.ru'		
	}
	PER_PAGE = 10

	def index
		@taxonomies = Spree::Taxonomy.includes(root: :children)
		@curr_page = params[:curr_page].present? && params[:curr_page].to_i > 0 ? params[:curr_page].to_i : 1
		
		@source_type = params[:source_type] && SOURCE_LINKS.keys.include?(params[:source_type].to_sym) ? params[:source_type].to_sym : SOURCE_LINKS.keys.first
		@feed = Feedjira::Feed.fetch_and_parse(SOURCE_LINKS[@source_type])
		
		@feed_entries = @feed.entries
		@feed_entries = @feed_entries.slice((@curr_page - 1) * PER_PAGE, PER_PAGE)
	end

	protected

		def title
			"RSS of #{@source_type.to_s.gsub('_', ' ').capitalize}"
		end
		helper_method :title

		def news_tabs
			return SOURCE_LINKS.keys.map{|key| {title: key.to_s.gsub('_', ' ').capitalize, url: "/news/#{key.to_s}", active: @source_type == key} } 
		end
		helper_method :news_tabs

		def feed_entry_pagings
			page_total = ((@feed.entries.size / PER_PAGE) + 0.5).to_i
			return nil if page_total <= 1
			result = {}
			result.merge!(prev: "/news/#{@source_type.to_s}?curr_page=#{@curr_page-1}") if @curr_page > 1
			result.merge!(next: "/news/#{@source_type.to_s}?curr_page=#{@curr_page+1}") if @curr_page < page_total
			result.merge!(pages:  (1..page_total).to_a.map { |page_number| 
															{ page: page_number, 
															  url: "/news/#{@source_type.to_s}?curr_page=#{page_number}", 
															  active: page_number == @curr_page
															}
														})
			return result
		end
		helper_method :feed_entry_pagings

		def pre_process_summary(summary)
			#change the Root URL in RSS content
			summary.gsub("href=\"/", "target=\"_blank\" href=\"#{SOURCE_ROOTS[@source_type]}/")
		end
		helper_method :pre_process_summary

end
