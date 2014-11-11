class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    if current_user.is_admin?
      @location = Location.new(location_params)
      if @location.save
        redirect_to locations_path
      else
        render :back
      end
    else
      render :back
    end
  end

  private

  def location_params
    params.require(:location).permit(:name)
  end
end
