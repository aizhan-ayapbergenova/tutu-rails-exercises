class Route < ApplicationRecord
  has_many :railway_stations_routes
  has_many :railway_stations, through: :railway_stations_routes
  has_many :trains

  validates :name, presence: true, uniqueness: { scope: :route_id }
  validate :station_count

  before_validation :set_name
  
  private
  def set_name
    self.name = "#{railway_stations.first.title} - #{railway_stations.last.title}"
  end

  def station_count
    if railway_stations.size < 2
      errors.add(:base, "Route must contain at least two stations")
    end
  end
end
