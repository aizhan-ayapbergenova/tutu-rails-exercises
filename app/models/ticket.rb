class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :train

  belongs_to :depart_station, class_name: 'RailwayStation', foreign_key: :depart_station_id
  belongs_to :arrive_station, class_name: 'RailwayStation', foreign_key: :arrive_station_id

end
