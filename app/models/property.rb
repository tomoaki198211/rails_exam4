class Property < ApplicationRecord
  has_many :nearest_stations
  accepts_nested_attributes_for :nearest_stations, allow_destroy: true,
  reject_if: lambda {|attributes| attributes['route_name'].blank? and attributes['station_name'].blank? and attributes['minute_walk'].blank?}
end
