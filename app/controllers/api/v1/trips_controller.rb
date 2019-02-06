class Api::V1::TripsController < ApplicationController
  before_action :find_trip, only: [:update, :show]

 def index
   @user = User.find(params[:user_id])
   @trips = @user.trips

   #@trips = Trip.all
   render json: @trips
 end

 def show
  #@trip = Trip.find(params[:id])
  render json: @trip, status: 200
end

  def create
   @trip = Trip.new(trip_params)
   # byebug
   if @trip.valid?
     @trip.save
     render json: @trip, status: :accepted
   else
     render json: { errors: @trip.errors.full_messages }, status: :unprocessible_entity
   end
 end


 def update
   @trip.update(trip_params)
   if @trip.save
     render json: @trip, status: :accepted
   else
     render json: { errors: @trip.errors.full_messages }, status: :unprocessible_entity
   end
 end

 def destroy
   @trip = Trip.find(params[:id])
   @trip.destroy
   render json: @trips
 end

 private

 def trip_params
   params.permit(:name, :date, :user_id)
 end

 def find_trip
   @trip = Trip.find(params[:id])
 end
end
