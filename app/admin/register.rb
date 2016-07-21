ActiveAdmin.register Register do

	permit_params :nombre, :telefono, :celular, :email
		
		index do
    	selectable_column   
    	column :nombre
      column :celular
    	column :telefono
    	column :email
    	actions
  		end

  		filter :nombre
      filter :celular
      filter :telefono
 	 	  filter :email
  



# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
