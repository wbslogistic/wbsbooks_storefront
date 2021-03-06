class NewsController < Spree::StoreController
  helper 'spree/products'



	PER_PAGE = 20

	def index

    @source_links_hash = Hash.new
    Spree::NItem.all.each do  |el|
      @source_links_hash[el.name.to_sym]= el.location
    end

		@taxonomies = Spree::Taxonomy.includes(root: :children)
		@curr_page = params[:curr_page].present? && params[:curr_page].to_i > 0 ? params[:curr_page].to_i : 1
		
		@source_type = params[:source_type] && @source_links_hash.keys.include?(params[:source_type].to_sym) ? params[:source_type].to_sym : @source_links_hash.keys.first
		@feed = Feedjira::Feed.fetch_and_parse(@source_links_hash[@source_type])
		
		@feed_entries = @feed.entries rescue []
		@feed_entries = @feed_entries.slice((@curr_page - 1) * PER_PAGE, PER_PAGE)
	end

	protected

		def title
			"RSS of #{@source_type.to_s.gsub('_', ' ').capitalize}"
		end
		helper_method :title

		def news_tabs
			return @source_links_hash.keys.map{|key| {title: key.to_s.gsub('_', ' ').capitalize, url: "/news/#{key.to_s}", active: @source_type == key} }
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
      domain =  URI.parse(@source_links_hash[@source_type]).host.downcase

			summary.gsub("href=\"/", "target=\"_blank\" href=\"#{domain}/")
		end
		helper_method :pre_process_summary

end
