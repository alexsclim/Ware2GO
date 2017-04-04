class AssistanceMapsController < ApplicationController
  def index
    respond_to do |format|
      format.js do
        @assistances = Assistance.all
        @geojson_locations = Array.new

        @assistances.each do |assistance|

          @geojson_locations << {
            type: 'Feature',
            geometry: {
              type: 'Point',
              coordinates: [assistance.longitude, assistance.latitude]
            },
            properties: {
              'user_id': assistance.user_id,
              'marker-size': 'large',
              'marker-color': 'ff1a1a',
              'marker-symbol': 'rocket',
              'popupContent': "User #{assistance.user_id}: #{assistance.comment}"
            }
          }
        end
        render json: @geojson_locations
      end
      format.html
    end
  end
end
