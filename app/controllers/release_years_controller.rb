class ReleaseYearsController < ApplicationController
  def index
    @release_years = ReleaseYear.all

    render("release_years/index.html.erb")
  end

  def show
    @sneaker_model = SneakerModel.new
    @release_year = ReleaseYear.find(params[:id])

    render("release_years/show.html.erb")
  end

  def new
    @release_year = ReleaseYear.new

    render("release_years/new.html.erb")
  end

  def create
    @release_year = ReleaseYear.new

    @release_year.sneaker_id = params[:sneaker_id]

    save_status = @release_year.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/release_years/new", "/create_release_year"
        redirect_to("/release_years")
      else
        redirect_back(:fallback_location => "/", :notice => "Release year created successfully.")
      end
    else
      render("release_years/new.html.erb")
    end
  end

  def edit
    @release_year = ReleaseYear.find(params[:id])

    render("release_years/edit.html.erb")
  end

  def update
    @release_year = ReleaseYear.find(params[:id])

    @release_year.sneaker_id = params[:sneaker_id]

    save_status = @release_year.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/release_years/#{@release_year.id}/edit", "/update_release_year"
        redirect_to("/release_years/#{@release_year.id}", :notice => "Release year updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Release year updated successfully.")
      end
    else
      render("release_years/edit.html.erb")
    end
  end

  def destroy
    @release_year = ReleaseYear.find(params[:id])

    @release_year.destroy

    if URI(request.referer).path == "/release_years/#{@release_year.id}"
      redirect_to("/", :notice => "Release year deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Release year deleted.")
    end
  end
end
