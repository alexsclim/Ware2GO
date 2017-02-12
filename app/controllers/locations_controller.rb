class LocationsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def nearby
    locations = Location.within(0.10, :origin => [params[:latitude], params[:longitude]])
    if locations.present?
      locations.first.increment!(:visited_num)
    end
    string = ""
    if locations.present?
      locations.each do |location|
        if string == ""
          string = string + "location%||#{location.name}||#{location.description}"
        else
          string = string + "||location%||#{location.name}||#{location.description}"
        end
      end
      string = "~@" + string + "^&"
    end
    render text: string
  end

  def hot
    hot_locations = Location.all.where.not(visited_num: nil).order('visited_num DESC').limit(5)
    string = ""
    if hot_locations.present?
      hot_locations.each do |location|
        if string == ""
          string = string + "location%||#{location.name}||#{location.description}"
        else
          string = string + "||location%||#{location.name}||#{location.description}"
        end
      end
      string = "~@" + string + "^&"
    end
    render text: string
  end
end
