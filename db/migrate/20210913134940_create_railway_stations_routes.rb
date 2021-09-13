class CreateRailwayStationsRoutes < ActiveRecord::Migration[6.0]
  def change
    create_table :railway_stations_routes do |t|
      t.integer :route_id
      t.integer :railway_station_id
    end
  end
end
