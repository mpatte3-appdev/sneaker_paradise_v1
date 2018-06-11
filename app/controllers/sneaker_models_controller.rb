class SneakerModelsController < ApplicationController
  def index
    @sneaker_models = SneakerModel.page(params[:page]).per(10)

    render("sneaker_models/index.html.erb")
  end

  def show
    @colorway = Colorway.new
    @sneaker_model = SneakerModel.find(params[:id])

    render("sneaker_models/show.html.erb")
  end

  def new
    @sneaker_model = SneakerModel.new

    render("sneaker_models/new.html.erb")
  end

  def create
    @sneaker_model = SneakerModel.new

    @sneaker_model.initial_release_date = params[:initial_release_date]
    @sneaker_model.release_year = params[:release_year]
    @sneaker_model.colorway_name = params[:colorway_name]
    @sneaker_model.brand = params[:brand]
    @sneaker_model.lead_designer = params[:lead_designer]
    @sneaker_model.sneaker_image = params[:sneaker_image]
    @sneaker_model.sneaker_id = params[:sneaker_id]
    @sneaker_model.designer_id = params[:designer_id]
    @sneaker_model.brands_id = params[:brands_id]

    save_status = @sneaker_model.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/sneaker_models/new", "/create_sneaker_model"
        redirect_to("/sneaker_models")
      else
        redirect_back(:fallback_location => "/", :notice => "Sneaker model created successfully.")
      end
    else
      render("sneaker_models/new.html.erb")
    end
  end

  def edit
    @sneaker_model = SneakerModel.find(params[:id])

    render("sneaker_models/edit.html.erb")
  end

  def update
    @sneaker_model = SneakerModel.find(params[:id])

    @sneaker_model.initial_release_date = params[:initial_release_date]
    @sneaker_model.release_year = params[:release_year]
    @sneaker_model.colorway_name = params[:colorway_name]
    @sneaker_model.brand = params[:brand]
    @sneaker_model.lead_designer = params[:lead_designer]
    @sneaker_model.sneaker_image = params[:sneaker_image]
    @sneaker_model.sneaker_id = params[:sneaker_id]
    @sneaker_model.designer_id = params[:designer_id]
    @sneaker_model.brands_id = params[:brands_id]

    save_status = @sneaker_model.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/sneaker_models/#{@sneaker_model.id}/edit", "/update_sneaker_model"
        redirect_to("/sneaker_models/#{@sneaker_model.id}", :notice => "Sneaker model updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Sneaker model updated successfully.")
      end
    else
      render("sneaker_models/edit.html.erb")
    end
  end

  def destroy
    @sneaker_model = SneakerModel.find(params[:id])

    @sneaker_model.destroy

    if URI(request.referer).path == "/sneaker_models/#{@sneaker_model.id}"
      redirect_to("/", :notice => "Sneaker model deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Sneaker model deleted.")
    end
  end
end
