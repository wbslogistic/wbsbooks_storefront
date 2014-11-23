module Spree
module Admin
 UsersController.class_eval do
  
    private
        def user_params
          Spree::PermittedAttributes.user_attributes.push :id,:newsletter,:othstreet,:othsuburb,:othpostalcode,:othcity,:fax,:accounttype,:actcompanyname,:registerednumber,:countryregistration,:vat,:years
          params.require(:user).permit(PermittedAttributes.user_attributes.push :spree_role_ids)
        end
    
    
  end
 end
end