class DesignersController < ApplicationController
  def index
    @q = Designer.ransack(params[:q])
    @designers = @q.result(:distinct => true).includes(:sneaker, :brand_name).page(params[:page]).per(10)

    render("designers/index.html.erb")
  end

  def show
    @designer = Designer.find(params[:id])

    render("designers/show.html.erb")
  end

  def new
    @designer = Designer.new

    render("designers/new.html.erb")
  end

  def create
    @designer = Designer.new

    @designer.designer_name = params[:designer_name]
    @designer.sneaker_id = params[:sneaker_id]
    @designer.designer_id = params[:designer_id]

    save_status = @designer.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/designers/new", "/create_designer"
        redirect_to("/designers")
      else
        redirect_back(:fallback_location => "/", :notice => "Designer created successfully.")
      end
    else
      render("designers/new.html.erb")
    end
  end

  def edit
    @designer = Designer.find(params[:id])

    render("designers/edit.html.erb")
  end

  def update
    @designer = Designer.find(params[:id])

    @designer.designer_name = params[:designer_name]
    @designer.sneaker_id = params[:sneaker_id]
    @designer.designer_id = params[:designer_id]

    save_status = @designer.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/designers/#{@designer.id}/edit", "/update_designer"
        redirect_to("/designers/#{@designer.id}", :notice => "Designer updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Designer updated successfully.")
      end
    else
      render("designers/edit.html.erb")
    end
  end

  def destroy
    @designer = Designer.find(params[:id])

    @designer.destroy

    if URI(request.referer).path == "/designers/#{@designer.id}"
      redirect_to("/", :notice => "Designer deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Designer deleted.")
    end
  end
end
