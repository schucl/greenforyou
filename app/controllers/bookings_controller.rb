class BookingsController < ApplicationController
  before_action :set_booking, only: [:show]
  before_action :set_plant, only: [:new, :create]

  def index
    @bookings = Booking.all
  end

  def show

  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.plant = @plant
    @booking.status = "pending"
    if @booking.save
      redirect_to user_path(@booking.user)
    else
      render 'plants/show'
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    if @booking.save
      redirect_to user_path(@booking.plant.user)
    end
  end

  def reject
    @booking = Booking.find(params[:id])
    @booking.status = "declined"
    if @booking.save
      redirect_to user_path(@booking.plant.user)
    end
  end

  private
  def set_booking
    @booking = Booking.find(params[:plant_id])
  end

  def set_plant
    @plant = Plant.find(params[:plant_id])
  end

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date)
  end
end
