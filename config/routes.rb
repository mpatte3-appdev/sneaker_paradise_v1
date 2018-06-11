Rails.application.routes.draw do
  # Routes for the Designer resource:
  # CREATE
  get "/designers/new", :controller => "designers", :action => "new"
  post "/create_designer", :controller => "designers", :action => "create"

  # READ
  get "/designers", :controller => "designers", :action => "index"
  get "/designers/:id", :controller => "designers", :action => "show"

  # UPDATE
  get "/designers/:id/edit", :controller => "designers", :action => "edit"
  post "/update_designer/:id", :controller => "designers", :action => "update"

  # DELETE
  get "/delete_designer/:id", :controller => "designers", :action => "destroy"
  #------------------------------

  # Routes for the Brand resource:
  # CREATE
  get "/brands/new", :controller => "brands", :action => "new"
  post "/create_brand", :controller => "brands", :action => "create"

  # READ
  get "/brands", :controller => "brands", :action => "index"
  get "/brands/:id", :controller => "brands", :action => "show"

  # UPDATE
  get "/brands/:id/edit", :controller => "brands", :action => "edit"
  post "/update_brand/:id", :controller => "brands", :action => "update"

  # DELETE
  get "/delete_brand/:id", :controller => "brands", :action => "destroy"
  #------------------------------

  # Routes for the Release_year resource:
  # CREATE
  get "/release_years/new", :controller => "release_years", :action => "new"
  post "/create_release_year", :controller => "release_years", :action => "create"

  # READ
  get "/release_years", :controller => "release_years", :action => "index"
  get "/release_years/:id", :controller => "release_years", :action => "show"

  # UPDATE
  get "/release_years/:id/edit", :controller => "release_years", :action => "edit"
  post "/update_release_year/:id", :controller => "release_years", :action => "update"

  # DELETE
  get "/delete_release_year/:id", :controller => "release_years", :action => "destroy"
  #------------------------------

  # Routes for the Colorway resource:
  # CREATE
  get "/colorways/new", :controller => "colorways", :action => "new"
  post "/create_colorway", :controller => "colorways", :action => "create"

  # READ
  get "/colorways", :controller => "colorways", :action => "index"
  get "/colorways/:id", :controller => "colorways", :action => "show"

  # UPDATE
  get "/colorways/:id/edit", :controller => "colorways", :action => "edit"
  post "/update_colorway/:id", :controller => "colorways", :action => "update"

  # DELETE
  get "/delete_colorway/:id", :controller => "colorways", :action => "destroy"
  #------------------------------

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
