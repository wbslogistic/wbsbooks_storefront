module Spree
  class HomeController < Spree::StoreController
    helper 'spree/products'
    respond_to :html
    skip_before_filter :verify_authenticity_token  , only: [:askquestion]
    layout "no_catalog", only: [:about, :contact, :faq]

    def index
      @searcher = build_searcher(params)
      @products = @searcher.retrieve_products
      @taxonomies = Spree::Taxonomy.includes(root: :children)
    end

    def about
    end

    def contact
    end

    def faq
    
    end
    def askquestion
      name = params[:question_name]
	  mail = params[:question_mail]
	  subject = params[:question_subject]
	  message = params[:question_message]
	  sendcopy= params[:question_send_copy]
      FaqMailer.faq(name,mail, subject, message,sendcopy).deliver
      redirect_to :back , :notice => 'Sent Mail Successfully'
    end
  end
end
