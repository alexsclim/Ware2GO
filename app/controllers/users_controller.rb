class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def visited
    @user = User.find(params[:user_id])
    if @user.visits.where.not(location_id: params[:location_id]).where.not(user_id: params[:user_id])
      @user.visits.build(user_id: params[:user_id], location_id: params[:location_id])
      @user.save
    end
    if @user.visits.where(location_id: 1).present? && @user.visits.where(location_id: 5).present?
      render plain: 'Congratulations! You have won a prize, visit the visitor information center to claim it!'
    elsif @user.visits.where(location_id: 1).present? && @user.visits.where(location_id: 5).empty?
      render plain: 'You need to visit Pharmacy building to be eligible for a prize.'
    elsif @user.visits.where(location_id: 1).empty? && @user.visits.where(location_id: 5).present?
      render plain: 'You need to visit MacLeod building to be eligible for a prize.'
    else
      render plain: 'Visit Pharmacy building and MacLeod building to be eligible for a prize!'
    end
  end
end
