class ReviewsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    location = Location.find(params[:building_id])
    reviews = location.reviews.order(:created_at).limit(6)
    string = ""
    if reviews.present?
      reviews.each do |review|
        if string == ""
          string = string + "review%||#{review.location_id}||#{review.user_name}||#{review.body}"
        else
          string = string + "||review%||#{review.location_id}||#{review.user_name}||#{review.body}"
        end
      end
      string = "~@" + string + "^&"
    end
    render text: string
  end

  def create
    location = Location.find(params[:building_id])
    review = location.reviews.build(body: params[:review], user_id: params[:user_id], user_name: params[:user_name])
    review.save!
    render text: "~@Donald Trump was here^&"
  end
end
