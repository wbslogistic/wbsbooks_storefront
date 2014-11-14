module Spree
  module BaseHelper

    # Defined because Rails' current_page? helper is not working when Spree is mounted at root.
    def current_spree_page?(url)
      path = request.fullpath.gsub(/^\/\//, '/')
      if url.is_a?(String)
        return path == url
      elsif url.is_a?(Hash)
        return path == spree.url_for(url)
      end
      return false
    end

    def link_to_cart(text = nil)
      text = text ? h(text) : Spree.t('cart')
      css_class = nil

      if simple_current_order.nil? or simple_current_order.item_count.zero?
        text = "#{text}: (#{Spree.t('empty')})"
        css_class = 'empty'
      else
        text = "#{text}: (#{simple_current_order.item_count})  <span class='amount total-sum'>#{simple_current_order.display_total.to_html}</span>"
        css_class = 'full'
      end

      link_to text.html_safe, spree.cart_path, :class => "cart-info #{css_class}"
    end

    # human readable list of variant options
    def variant_options(v, options={})
      v.options_text
    end

    def meta_data
      object = instance_variable_get('@'+controller_name.singularize)
      meta = {}

      if object.kind_of? ActiveRecord::Base
        meta[:keywords] = object.meta_keywords if object[:meta_keywords].present?
        meta[:description] = object.meta_description if object[:meta_description].present?
      end

      if meta[:description].blank? && object.kind_of?(Spree::Product)
        meta[:description] = strip_tags(truncate(object.description, length: 160, separator: ' '))
      end

      meta.reverse_merge!({
        keywords: current_store.meta_keywords,
        description: current_store.meta_description,
      })
      meta
    end

    def meta_data_tags
      meta_data.map do |name, content|
        tag('meta', name: name, content: content)
      end.join("\n")
    end

    def body_class
      @body_class ||= content_for?(:sidebar) ? 'two-col' : 'one-col'
      @body_class
    end

    def logo(image_path=Spree::Config[:logo])
      link_to image_tag(image_path), spree.root_path
    end

    def flash_messages(opts = {})
      opts[:ignore_types] = [:order_completed].concat(Array(opts[:ignore_types]) || [])

      flash.each do |msg_type, text|
        unless opts[:ignore_types].include?(msg_type)
          concat(content_tag :div, text, class: "flash #{msg_type}")
        end
      end
      nil
    end

    def breadcrumbs(taxon, product, separator="&nbsp;")
      return "" if current_page?("/") || taxon.nil?
      separator = raw(separator)
      crumbs = [content_tag(:li, link_to(Spree.t(:home), spree.root_path) + separator)]
      if taxon
        crumbs << taxon.ancestors.collect { |ancestor| content_tag(:li, link_to(ancestor.name , seo_url(ancestor)) + separator) } unless taxon.ancestors.empty?
        crumbs << content_tag(:li, content_tag(:span, link_to(taxon.name , seo_url(taxon))))
        crumbs << content_tag(:li, content_tag(:span, product.name)) unless product.nil?
      else
        crumbs << content_tag(:li, content_tag(:span, Spree.t(:products)))
      end
      crumb_list = content_tag(:ul, raw(crumbs.flatten.map{|li| li.mb_chars}.join), class: 'inline')
      content_tag(:nav, crumb_list, id: 'breadcrumbs', class: 'sixteen columns')
    end    

    def taxons_tree(root_taxon, current_taxon, max_level = 1, current_level = 1)
      if current_taxon.nil? or !(current_taxon.permalink.include?("categories/") || current_taxon.permalink.include?("suggested-titles/"))
        root_taxon = root_taxon
      else
        if current_taxon.children.blank?
          root_taxon = current_taxon.parent
        else
          root_taxon = current_taxon
        end
      end
      return '' if max_level < 1 || root_taxon.blank? || root_taxon.children.empty?
      if current_level == 1
        content_tag :ul, class: 'widget-shadow', id: 'left-nav' do
          root_taxon.children.map do |taxon|
            css_class = (current_taxon && current_taxon.self_and_ancestors.include?(taxon)) ? 'active' : nil
            content_tag :li, class: css_class do
              link_to(taxon.name, seo_url(taxon), "class" => css_class) +
              if current_taxon && current_taxon.self_and_ancestors.include?(taxon)
                taxons_tree(taxon, current_taxon, max_level - 1, current_level + 1)
              end
            end
          end.join("\n").html_safe
        end
      else
        content_tag :ul do
          root_taxon.children.map do |taxon|
            css_class = (current_taxon && current_taxon.self_and_ancestors.include?(taxon)) ? 'active' : nil
            content_tag :li, class: css_class do
              link_to(taxon.name, seo_url(taxon), "class" => css_class) +
              if current_taxon && current_taxon.self_and_ancestors.include?(taxon)
                taxons_tree(taxon, current_taxon, max_level - 1, current_level + 1)
              end
            end
          end.join("\n").html_safe
        end
      end
    end

    def taxon_authors(product)
      links = ""
      au_taxons = product.taxons.where("spree_taxons.permalink LIKE :link1", {:link1 => "authors%"})
      return '' if au_taxons.blank?
      au_taxons.map do |taxon|
        links << '<div class="author">'
        links << link_to(taxon.name, seo_url(taxon))
        links << "</div>"
      end
      raw(links)
    end
    
    def taxon_author_products(product)
      links = ""
      au_taxons = product.taxons.where("spree_taxons.permalink LIKE :link1", {:link1 => "authors%"})
      return '' if au_taxons.blank?
      au_taxons.map do |taxon|
        links << Spree::Taxon.find_by_permalink!(taxon.permalink).id.to_s
      end
      raw(links)
    end

    def taxon_publishers(product)
      links = ""
      pu_taxons = product.taxons.where("spree_taxons.permalink LIKE :link1", {:link1 => "publishers%"})
      return '' if pu_taxons.blank?
      cnt = 0
      pu_taxons.map do |taxon|
        cnt+=1
        links << ", " if cnt > 1
        links << link_to(taxon.name, seo_url(taxon))
      end
      raw(links)
    end    

    def available_countries
      checkout_zone = Zone.find_by(name: Spree::Config[:checkout_zone])

      if checkout_zone && checkout_zone.kind == 'country'
        countries = checkout_zone.country_list
      else
        countries = Country.all
      end

      countries.collect do |country|
        country.name = Spree.t(country.iso, scope: 'country_names', default: country.name)
        country
      end.sort { |a, b| a.name.parameterize <=> b.name.parameterize }
    end

    def seo_url(taxon)
      return spree.nested_taxons_path(taxon.permalink)
    end

    def gem_available?(name)
       Gem::Specification.find_by_name(name)
    rescue Gem::LoadError
       false
    rescue
       Gem.available?(name)
    end

    def display_price(product_or_variant)
      product_or_variant.price_in(current_currency).display_price.to_html
    end

    def pretty_time(time)
      [I18n.l(time.to_date, format: :long),
        time.strftime("%l:%M %p")].join(" ")
    end

    def method_missing(method_name, *args, &block)
      if image_style = image_style_from_method_name(method_name)
        define_image_method(image_style)
        self.send(method_name, *args)
      else
        super
      end
    end

    def link_to_tracking(shipment, options = {})
      return unless shipment.tracking

      if shipment.tracking_url
        link_to(shipment.tracking, shipment.tracking_url, options)
      else
        content_tag(:span, shipment.tracking)
      end
    end

    private
    # Returns style of image or nil
    def image_style_from_method_name(method_name)
      if style = method_name.to_s.sub(/_image$/, '')
        possible_styles = Spree::Image.attachment_definitions[:attachment][:styles]
        style if style.in? possible_styles.with_indifferent_access
      end
    end

    def create_product_image_tag(image, product, options, style)
      options.reverse_merge! alt: image.alt.blank? ? product.name : image.alt
      image_tag image.attachment.url(style), options
    end

    def define_image_method(style)
      self.class.send :define_method, "#{style}_image" do |product, *options|
        options = options.first || {}
        if product.images.empty?
          if !product.is_a?(Spree::Variant) && !product.variant_images.empty?
            create_product_image_tag(product.variant_images.first, product, options, style)
          else
            if product.is_a?(Variant) && !product.product.variant_images.empty?
              create_product_image_tag(product.product.variant_images.first, product, options, style)
            else
              image_tag "noimage/#{style}.png", options
            end
          end
        else
          create_product_image_tag(product.images.first, product, options, style)
        end
      end
    end
  end
end
