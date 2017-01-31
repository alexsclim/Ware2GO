class LocationsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def nearby
    locations = Location.within(0.1, :origin => [params[:latitude], params[:longitude]])
    render json: locations
  end

  # private
  # def location_params
  #   params.require(:location).permit(:name, :latitude, :longitude)
  # end
end
