class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def visited
    if params[:user_id].empty?
      params[:user_id] = 1
    end
    id = params[:location_id].to_i - 1
    @user = User.find_or_create_by(id: params[:user_id])
    if @user.visits.where(location_id: params[:location_id], user_id: params[:user_id]).empty?
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

  def winners
    @users = User.all
    @winners = []
    @users.each do |user|
      if user.visits.where(location_id: 1).present? && user.visits.where(location_id: 5).present?
        @winners.push(user)
      end
    end
  end

  def claim
    @user = User.find(params[:user_id])
    @user.visits.first.update_column(:claimed, true)
    redirect_to winners_path
  end
end
