class Api::V1::SuitcasesController < ApplicationController
  before_action :find_suitcase, only: [:update, :show]

 def index
   @trip = Trip.find(params[:trip_id])
   @suitcases = @trip.suitcases
   # @suitcases = Suitcase.all
   render json: @suitcases
 end

 def show
  # @suitcase = Suitcase.find(params[:id])
  render json: @suitcase, status: 200
end

  def create
   @suitcase = Suitcase.new(suitcase_params)
   # byebug
   if @suitcase.valid?
     @suitcase.save
     render json: @suitcase, status: :accepted
   else
     render json: { errors: @suitcase.errors.full_messages }, status: :unprocessible_entity
   end
 end


 def update
   @suitcase.update(suitcase_params)
   if @suitcase.save
     render json: @suitcase, status: :accepted
   else
     render json: { errors: @suitcase.errors.full_messages }, status: :unprocessible_entity
   end
 end

 def destroy
   @suitcase = Suitcase.find(params[:id])
   @suitcase.destroy
   render json: @suitcases
 end

 private

 def suitcase_params
   params.permit(:name, :category, :trip_id)
 end

 def find_suitcase
   @suitcase = Suitcase.find(params[:id])
 end

end
