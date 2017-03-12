class StatsController < ApplicationController
  def index
    @locations = Location.all.order(:id)
    @reviews = Review.all.order(:id)
  end

  def users
    @users = User.all
  end
end
