class Spree::UserRegistrationsController < Devise::RegistrationsController
  helper 'spree/base', 'spree/store'

  if Spree::Auth::Engine.dash_available?
    helper 'spree/analytics'
  end


  include Spree::Core::ControllerHelpers::Auth
  include Spree::Core::ControllerHelpers::Common
  include Spree::Core::ControllerHelpers::Order
  include Spree::Core::ControllerHelpers::SSL
  include Spree::Core::ControllerHelpers::Store

  ssl_required
  before_filter :check_permissions, :only => [:edit, :update]
  skip_before_filter :require_no_authentication

  layout "no_catalog"

  # GET /resource/sign_up
  def new
    super
    @user = resource
  
  end

  # POST /resource/sign_up
  def create
    
    if params[:accounttype] == 'individual' and params[:spree_user]
      params[:spree_user].delete :bill_address_attributes
    end
    
    @user = build_resource(spree_user_params)
    if resource.save
      set_flash_message(:notice, :signed_up)
      #sign_in(:spree_user, @user)
       session[:spree_user_signup] = true
      associate_user
      
      redirect_to '/accountconfirm'
    else
      clean_up_passwords(resource)
      render :new
    end
  end

  # GET /resource/edit
  def edit
    @user = resource
    super
  end
  
  
   
  # PUT /resource
  def update
    if params[:accounttype] == 'individual' and params[:user]
      params[:user].delete :bill_address_attributes
    end
    
    @user = Spree::User.find(spree_current_user.id)
    @user.update(account_update_params)
    
    super
    
   set_flash_message :notice, :updated
    
  end

  # DELETE /resource
  def destroy
    super
  end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  def cancel
    super
  end

  protected
     def after_sign_up_path_for(resource)
       '/accountconfirm'
     end
  
    def check_permissions
      authorize!(:create, resource)
    end

  private
    def spree_user_params      
      attrs = Spree::PermittedAttributes.user_attributes
      attrs << :newsletter
      attrs << :id
      attrs << {
        ship_address_attributes: Spree::PermittedAttributes.address_attributes,
        bill_address_attributes: Spree::PermittedAttributes.address_attributes
      }
      Spree::PermittedAttributes.user_attributes.push :id,:othcountry, :othstate,:othstreet,:othsuburb,:othpostalcode,:othcity,:fax,:accounttype,:actcompanyname,:registerednumber,:countryregistration,:vat,:years
      params.require(:spree_user).permit(*attrs)
      
    end
    
    def account_update_params
      attrs = Spree::PermittedAttributes.user_attributes
      
      attrs << :newsletter
      attrs << :id
      attrs << :current_password
      
      attrs << {
        ship_address_attributes: Spree::PermittedAttributes.address_attributes,
        bill_address_attributes: Spree::PermittedAttributes.address_attributes
      }
      Spree::PermittedAttributes.user_attributes.push :id,:othstreet,:othcountry, :othstate,:othsuburb,:othpostalcode,:othcity,:fax,:accounttype,:actcompanyname,:registerednumber,:countryregistration,:vat,:years
      params.require(:user).permit(*attrs)
     
    end
end
