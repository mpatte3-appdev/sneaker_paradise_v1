class ColorwaysController < ApplicationController
  def index
    @colorways = Colorway.all

    render("colorways/index.html.erb")
  end

  def show
    @colorway = Colorway.find(params[:id])

    render("colorways/show.html.erb")
  end

  def new
    @colorway = Colorway.new

    render("colorways/new.html.erb")
  end

  def create
    @colorway = Colorway.new

    @colorway.sneaker_id = params[:sneaker_id]
    @colorway.colorway_name = params[:colorway_name]

    save_status = @colorway.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/colorways/new", "/create_colorway"
        redirect_to("/colorways")
      else
        redirect_back(:fallback_location => "/", :notice => "Colorway created successfully.")
      end
    else
      render("colorways/new.html.erb")
    end
  end

  def edit
    @colorway = Colorway.find(params[:id])

    render("colorways/edit.html.erb")
  end

  def update
    @colorway = Colorway.find(params[:id])

    @colorway.sneaker_id = params[:sneaker_id]
    @colorway.colorway_name = params[:colorway_name]

    save_status = @colorway.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/colorways/#{@colorway.id}/edit", "/update_colorway"
        redirect_to("/colorways/#{@colorway.id}", :notice => "Colorway updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Colorway updated successfully.")
      end
    else
      render("colorways/edit.html.erb")
    end
  end

  def destroy
    @colorway = Colorway.find(params[:id])

    @colorway.destroy

    if URI(request.referer).path == "/colorways/#{@colorway.id}"
      redirect_to("/", :notice => "Colorway deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Colorway deleted.")
    end
  end
end
