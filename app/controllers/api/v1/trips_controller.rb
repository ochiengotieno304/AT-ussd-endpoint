class Api::V1::TripsController < ApplicationController

  def create
    @trip = Trip.new(trip_params)
    if @trip.save
      render json: @trip
    else
      render error: @trip.errors.full_messages
    end
  end

  private
  def trip_params
    params.permit(:tripId, :depatureTime, :busId)
  end
end
