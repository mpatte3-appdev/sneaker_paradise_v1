ActiveAdmin.register SneakerModel do

 permit_params :initial_release_date, :release_year, :colorway_name, :brand, :lead_designer, :sneaker_image, :sneaker_id, :designer_id, :brands_id
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
