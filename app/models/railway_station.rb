class RailwayStation < ApplicationRecord
  has_many :trains

  validates :title, presence: true
end
