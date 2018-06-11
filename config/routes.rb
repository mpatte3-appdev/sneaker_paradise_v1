Rails.application.routes.draw do
  # Routes for the Sneaker_model resource:
  # CREATE
  get "/sneaker_models/new", :controller => "sneaker_models", :action => "new"
  post "/create_sneaker_model", :controller => "sneaker_models", :action => "create"

  # READ
  get "/sneaker_models", :controller => "sneaker_models", :action => "index"
  get "/sneaker_models/:id", :controller => "sneaker_models", :action => "show"

  # UPDATE
  get "/sneaker_models/:id/edit", :controller => "sneaker_models", :action => "edit"
  post "/update_sneaker_model/:id", :controller => "sneaker_models", :action => "update"

  # DELETE
  get "/delete_sneaker_model/:id", :controller => "sneaker_models", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
