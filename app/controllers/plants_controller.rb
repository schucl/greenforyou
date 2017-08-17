class PlantsController < ApplicationController
  before_action :set_plant, only: [:show, :update, :edit, :destroy]

  def index
    @plants = Plant.all
    # @user = current_user
    @plants = Plant.where.not(latitude: nil, longitude: nil)
    @plants_near = Plant.near(@address, 1)
    @hash = Gmaps4rails.build_markers(@plants) do |plant, marker|
      marker.lat plant.latitude
      marker.lng plant.longitude
    # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def show
    @booking = Booking.new
    @plant_coordinates = { lat: @plant.latitude, lng: @plant.longitude }
    @hash = Gmaps4rails.build_markers(@plants) do |plant, marker|
      marker.lat plant.latitude
      marker.lng plant.longitude
    # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.user = current_user
    if @plant.save
      redirect_to plants_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @plant.update(plant_params)
    if @plant.save
      redirect_to plant_path(@plant)
    else
      render :edit
    end
  end

  def destroy
    @plant.destroy
    redirect_to plants_path
  end

  private
  def set_plant
    @plant = Plant.find(params[:id])
  end

  def plant_params
    params.require(:plant).permit(:name, :description, :category, :address, :price, :photo)
  end

end
