class LocationsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def nearby
    locations = Location.within(0.06, :origin => [params[:latitude], params[:longitude]])
    render csv: locations, only: [:name, :description]
  end
end
