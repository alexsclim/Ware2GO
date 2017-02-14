class StatsController < ApplicationController
  def index
    @locations = Location.all.order(:id)
    @reviews = Review.all.order(:id)
  end
end
