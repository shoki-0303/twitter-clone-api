class Api::V1::TweetsController < ApplicationController
  def index
    @tweets = Tweet.order("created_at DESC")
    render json: @tweets
  end

  def show
    @tweet = Tweet.find(params[:id])
    render json: @tweet
  end
end
