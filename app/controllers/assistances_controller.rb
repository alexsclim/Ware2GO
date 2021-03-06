class AssistancesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @assistances = Assistance.all.where.not(latitude: 2000, longitude: 2000).order('updated_at DESC')
    render json: @assistances
  end

  def index_html
    @assistances = Assistance.all.where.not(latitude: 2000, longitude: 2000).order('updated_at DESC')
  end

  def create
    @assistance = Assistance.find_by(user_id: params[:user_id])
    if @assistance
      @assistance.update(user_id: params[:user_id], latitude: params[:latitude], longitude: params[:longitude], comment: params[:comment])
    else
      @assistance = Assistance.create(user_id: params[:user_id], latitude: params[:latitude], longitude: params[:longitude], comment: params[:comment])
    end
    render plain: "~@OK||Queue Position||#{Assistance.count}||^&"
  end

  def show
    @assistance = Assistance.find_by(user_id: params[:user_id])
    render json: @assistance
  end

  def destroy
    @assistance = Assistance.find_by(user_id: params[:user_id])
    if @assistance.nil?
      render plain: 'User already cancelled'
    end
  end

  def user_location
    @assistance = Assistance.find_by(user_id: params[:user_id])
    if @assistance.nil?
      render json: nil
    else
      render json: @assistance, only: [:latitude, :longitude]
    end
  end
end

