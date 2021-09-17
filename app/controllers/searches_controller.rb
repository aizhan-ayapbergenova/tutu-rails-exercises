class SearchesController < ApplicationController
  def show
  end

  def create
    @routes = Route.find_route(first_station_id, last_station_id)
    @trains = @routes.map { |route| route.trains }.flatten
    render :show
  end

  private

  def first_station_id
    params[:stations][:first_station_id].to_i
  end

  def last_station_id
    params[:stations][:last_station_id].to_i
  end
end
