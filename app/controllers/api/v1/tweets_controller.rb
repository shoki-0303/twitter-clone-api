class Api::V1::TweetsController < ApplicationController
  def index
    @tweets = Tweet.order("created_at DESC")
    render json: @tweets
  end
end
