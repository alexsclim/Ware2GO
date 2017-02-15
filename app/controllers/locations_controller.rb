class LocationsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def nearby
    closest = Location.closest(:origin => [params[:latitude], params[:longitude]])
    locations = Location.within(0.10, :origin => [params[:latitude], params[:longitude]]).where.not(id: closest.first.id).limit(5)
    hot_locations = Location.all.where.not(visited_num: nil).order('visited_num DESC').limit(4)

    if closest.first.present?
      closest.first.increment!(:visited_num)
    end

    hot_string = ""
    if hot_locations.present?
      hot_locations.each do |location|
        if hot_string == ""
          hot_string = hot_string + "h||#{location.name}||#{location.description}"
        else
          hot_string = hot_string + "||h||#{location.name}||#{location.description}"
        end
      end
      hot_string = "||" + hot_string + "^&"
    end
    string = ""
    if locations.present?
      locations.each do |location|
        if string == ""
          string = string + "n||#{location.name}||#{location.description}"
        else
          string = string + "||n||#{location.name}||#{location.description}"
        end
      end
    end
    closest_string = "~@c||#{closest.first.id}||#{closest.first.name}||#{closest.first.description}"
    new_string = "#{closest_string}||#{string}#{hot_string}"
    render plain: new_string
  end

  def hot
    hot_locations = Location.all.where.not(visited_num: nil).order('visited_num DESC').limit(4)
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
    render plain: string
  end
end
