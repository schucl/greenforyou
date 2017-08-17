class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show
    # @bookings = Booking.all
  end

  def edit
  end

  def update
    @user.update(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :description, :email, :photo)
  end
end
