class Api::V1::BelongingsController < ApplicationController
  before_action :find_belonging, only: [:update, :show]
#rjkjk
   def index
     # @belongings = Belonging.all
     @suitcase = Suitcase.find(params[:suitcase_id])
     @belongings = @suitcase.belongings
     # @suitcases = Suitcase.all
     # render json: @suitcases
     render json: @belongings
   end

   def allBelongingsInATrip
     @trip = Trip.find(params[:trip_id])
     @suitcases = @trip.suitcases
     # @belongings = @suitcases.map((suitcase) => suitcase.belongings)
   end

   def show
    # @belonging = Belonging.find(params[:id])
    render json: @belonging, status: 200
  end

    def create
     @belonging = Belonging.new(belonging_params)
     # byebug
     if @belonging.valid?
       @belonging.save
       render json: @belonging, status: :accepted
     else
       render json: { errors: @belonging.errors.full_messages }, status: :unprocessible_entity
     end
   end


   def update
     @belonging.update(belonging_params)
     if @belonging.save
       render json: @belonging, status: :accepted
     else
       render json: { errors: @belonging.errors.full_messages }, status: :unprocessible_entity
     end
   end

   def destroy
     @belonging = Belonging.find(params[:id])
     @belonging.destroy
     render json: @belongings
   end

   private

   def belonging_params
     params.permit(:name, :image, :suitcase_id)
   end

   def find_belonging
     @belonging = Belonging.find(params[:id])
   end
end
