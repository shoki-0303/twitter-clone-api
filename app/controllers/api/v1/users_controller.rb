class Api::V1::UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])

    return render status: 404, json: { status: 404, message: 'Record Not Found' } if @user.blank?
    render json: @user
  end
end
